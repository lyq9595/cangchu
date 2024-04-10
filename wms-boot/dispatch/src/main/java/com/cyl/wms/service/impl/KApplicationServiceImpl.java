package com.cyl.wms.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.cyl.wms.commonutils.Result;
import com.cyl.wms.domain.KApplication;
import com.cyl.wms.mapper.KApplicationEmployMapper;
import com.cyl.wms.mapper.KApplicationMapper;
import com.cyl.wms.pojo.vo.ApplicationQuery;
import com.cyl.wms.service.KApplicationService;

import com.ruoyi.common.utils.StringUtils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.Writer;

/**
 * <p>
 * 讲师 服务实现类
 * </p>
 *
 * @author lyq
 * @since 2023-02-01
 */
@Service
public class KApplicationServiceImpl extends ServiceImpl<KApplicationMapper, KApplication> implements KApplicationService {

    @Autowired
    private KApplicationMapper applicationMapper;



    @Autowired
    private KApplicationEmployMapper applicationEmployMapper;

    @Override
    public Result queryApplicationByPage(Integer currentStatusCode, long current, long limit, ApplicationQuery applicationQuery) {
        IPage<KApplication> pageApplication = new Page<>(current,limit);
        QueryWrapper<KApplication> wrapper = new QueryWrapper<>();
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
            wrapper.ge("start_time",begin);
        }

        if(!StringUtils.isEmpty(end)){
            wrapper.le("start_time",end);
        }
        wrapper.ge("current_status_code",currentStatusCode);
        wrapper.le("current_status_code",currentStatusCode+1);
        wrapper.orderByAsc("current_status_code");
        IPage<KApplication> page = this.page(pageApplication, wrapper);
        return Result.ok().data("total",page.getTotal()).data("rows",page.getRecords());
    }



    @Override
    public Long addApplication(KApplication application) {
        applicationMapper.insert(application);
        return application.getApplicationId();
    }

    @Override
    public KApplication getApplicationById(Long applicationId) {
        return applicationMapper.selectById(applicationId);
    }

    @Override
    public int updateApplication(KApplication application) {
        return applicationMapper.updateById(application);
    }

    @Override
    public int updateApplicationSubmit(Long applicationId) {
        return applicationMapper.updateSubmit(applicationId);

    }
}
