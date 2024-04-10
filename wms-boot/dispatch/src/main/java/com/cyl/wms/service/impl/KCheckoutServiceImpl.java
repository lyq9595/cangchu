package com.cyl.wms.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.cyl.wms.commonutils.Result;
import com.cyl.wms.domain.*;
import com.cyl.wms.mapper.*;
import com.cyl.wms.pojo.vo.ApplicationQuery;
import com.cyl.wms.service.KCheckoutService;
import com.ruoyi.common.utils.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;

/**
 * @description:
 * @author: li ying qi
 **/
@Service
public class KCheckoutServiceImpl extends ServiceImpl<KCheckoutMapper, KCheckout> implements KCheckoutService {

    @Autowired
    private KApplicationEmployMapper applicationEmployMapper;

    @Autowired
    private KApplicationCarMapper applicationCarMapper;

    @Autowired
    private KEmployMapper employMapper;

    @Autowired
    private KCarMapper carMapper;

    @Autowired
    private KApplicationMapper applicationMapper;

    @Autowired
    private KCheckoutMapper checkoutMapper;






    @Override
    public void generateCheckout(Long id) {
        KCheckout checkout = new KCheckout();
        int cNum = 0, eNum = 0;
        float eCost = 0, cCost = 0;
        List<Long> employIds = applicationEmployMapper.getEmployIds(id);
        List<Long> carIds = applicationCarMapper.getCarIds(id);
        if (employIds.size() != 0) {
            List<KEmploy> employList = employMapper.selectBatchIds(employIds);
            for (KEmploy employ : employList) {
                eNum++;
                eCost += employ.getEmployCost();
            }
        }

        if (carIds.size() != 0) {
            List<KCar> carList = carMapper.selectBatchIds(carIds);
            for (KCar car : carList) {
                cNum++;
                cCost += car.getCarCost();
            }
        }
        checkout.setEmployNum(eNum);
        checkout.setCarNum(cNum);
        checkout.setLaborCost(eCost);
        checkout.setCarCost(cCost);
        checkout.setTotalCost(cCost + eCost);
        checkout.setCheckTime(LocalDateTime.now());
        checkout.setCheckStatus(0);
        checkout.setApplicationId(id);

        KApplication application = applicationMapper.selectById(id);
        checkout.setApplyDeptName(application.getApplyDeptName());
        checkout.setApplyGroupName(application.getApplyGroupName());
        checkout.setApplicationTime(application.getStartTime());
        checkout.setMarketTypeName(application.getMarketTypeName());
        checkout.setWorkTypeName(application.getWorkTypeName());
        checkout.setDispatchTypeName(application.getDispatchTypeName());
        System.out.println(checkout);
        checkoutMapper.insert(checkout);

    }

    @Override
    public Result queryCheckoutByPage( long current, long limit, ApplicationQuery applicationQuery) {
        IPage<KCheckout> pageApplication = new Page<>(current,limit);
        QueryWrapper<KCheckout> wrapper = new QueryWrapper<>();
        String deptName = null;
        String groupName = null;
        String begin = null;
        String end = null;
        if(applicationQuery!=null){
            deptName = applicationQuery.getApplicationDeptName();
            groupName = applicationQuery.getApplicationGroupName();
            begin = applicationQuery.getBegin();
            end = applicationQuery.getEnd();
        }
        if(!StringUtils.isEmpty(deptName)){
            wrapper.like("apply_dept_name",deptName);
        }
        if(!StringUtils.isEmpty(groupName)){
            wrapper.eq("apply_group_name",groupName);
        }
        if(!StringUtils.isEmpty(begin)){
            wrapper.ge("application_time",begin);
        }

        if(!StringUtils.isEmpty(end)){
            wrapper.le("application_time",end);
        }
        wrapper.orderByAsc("check_status");
        IPage<KCheckout> page = this.page(pageApplication, wrapper);
        return Result.ok().data("total",page.getTotal()).data("rows",page.getRecords());
    }

    @Override
    public void updateCheckoutStatus(Long id) {
        checkoutMapper.updateCheckoutStatus(id);
    }

    @Override
    public void updateApplicationECRelation(Long id) {
        applicationEmployMapper.deleteRelation(id);
        applicationCarMapper.deleteRelation(id);
    }

    @Override
    public List<KCheckout> queryCheckInfoByAid(Long applicationId) {
        QueryWrapper<KCheckout> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("application_id",applicationId);
        return checkoutMapper.selectList(queryWrapper);
    }

}

