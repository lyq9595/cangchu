package com.cyl.wms.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.cyl.wms.commonutils.Result;
import com.cyl.wms.domain.KApplication;
import com.cyl.wms.domain.KCar;
import com.cyl.wms.domain.KEmploy;
import com.cyl.wms.pojo.vo.KCarVo;
import com.cyl.wms.mapper.KApplicationMapper;
import com.cyl.wms.mapper.KCarMapper;
import com.cyl.wms.service.KCarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

/**
 * @description:
 * @author: li ying qi
 **/

@Service
public class KCarServiceImpl extends ServiceImpl<KCarMapper, KCar> implements  KCarService{

    @Autowired
    private KCarMapper carMapper;

    @Autowired
    private KApplicationMapper applicationMapper;


    @Override
    public List<KCarVo> getCarByCompanyId(long id, Date startTime, Date endTime) throws Exception {
        List<KCarVo> carList = carMapper.getCarByCompanyId(id);
        for (KCarVo car : carList) {
            //根据员工id查询目前所属所有工单
            List<Long> applicationIds = carMapper.getApplicationByCarId(car.getCarId());
            if (applicationIds.size() == 0) continue;    //这个车辆没有工单 跳过
            List<KApplication> applicationList =
                    applicationMapper.selectBatchIds(applicationIds);
            for (KApplication application : applicationList) {
                if ((startTime.after(application.getStartTime()) && endTime.before(application.getEndTime()))
                        || (startTime.before(application.getStartTime()) && endTime.after(application.getStartTime()))
                        || (startTime.before(application.getEndTime()) && endTime.after(application.getEndTime()))
                        || (startTime.before(application.getStartTime()) && endTime.after(application.getEndTime()))
                ) {
                    car.setIsJob(1);//该车辆不可调度
                    break;  //有一个派工单时间冲突就可以返回了
                } else car.setIsJob(0);
            }
        }
        return carList;
    }

    @Override
    public List<KCar> getListByCarIds(Long[] ids) {
        return  carMapper.selectBatchIds(Arrays.asList(ids));
    }



    @Override
    public Result getCBycId(long id) {
        List<KCarVo> carList = carMapper.getCarByCompanyId(id);
        return Result.ok().data("rows",carList);
    }
}
