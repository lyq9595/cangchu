package com.cyl.wms.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.cyl.wms.commonutils.Result;
import com.cyl.wms.domain.KApplication;
import com.cyl.wms.domain.KEmploy;
import com.cyl.wms.pojo.vo.KEmployVo;
import com.cyl.wms.mapper.KApplicationMapper;
import com.cyl.wms.mapper.KEmployMapper;
import com.cyl.wms.service.KEmployService;
import com.cyl.wms.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

/**
 * @author lyq
 * @since 2023-02-08
 */
@Service
public class KEmployServiceImpl extends ServiceImpl<KEmployMapper, KEmploy> implements KEmployService {

    @Autowired
    private KEmployMapper employMapper;

    @Autowired
    private KApplicationMapper applicationMapper;


    @Override
    public Result getEmployByCompanyId(long id, Date startTime, Date endTime) throws Exception {
        List<KEmployVo> employList = employMapper.getEmployCompanyById(id);
        System.out.println("前台选择派工单开始时间：" + DateUtils.parseDate2String(startTime, "yyyy-MM-dd hh:mm:ss"));
        System.out.println("前台选择派工单结束时间：" + DateUtils.parseDate2String(endTime, "yyyy-MM-dd hh:mm:ss"));
        for (KEmployVo employ : employList) {
            //根据员工id查询目前所属所有工单
            List<Long> applicationIds = employMapper.getApplicationByEmployId(employ.getEmployId());
            if (applicationIds.size() == 0) continue;    //这个员工没有工单 跳过
            List<KApplication> applicationList =
                    applicationMapper.selectBatchIds(applicationIds);
            for (KApplication application : applicationList) {
                System.out.println("工人对应单子开始时间：" + application.getStartTime() + "工人对应单子结束时间：" + application.getEndTime());
                if ((startTime.after(application.getStartTime()) && endTime.before(application.getEndTime()))
                        || (startTime.before(application.getStartTime()) && endTime.after(application.getStartTime()))
                        || (startTime.before(application.getEndTime()) && endTime.after(application.getEndTime()))
                        || (startTime.before(application.getStartTime()) && endTime.after(application.getEndTime()))
                ) {
                    employ.setIsJob(1);//该员工不可调度
                    break;  //有一个派工单时间冲突就可以返回了
                } else employ.setIsJob(0);
            }
        }
        return Result.ok().data("rows", employList);
    }

    @Override
    public List<KEmploy> getListByEmployIds(Long[] ids) {
        List<KEmploy> employList = employMapper.selectBatchIds(Arrays.asList(ids));
        return employList;
    }

    @Override
    public Result getEByeId(long id) {
        List<KEmployVo> employList = employMapper.getEmployCompanyById(id);
        return Result.ok().data("rows",employList);
    }


}
