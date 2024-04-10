package com.cyl.wms.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.cyl.wms.domain.KApproval;
import com.cyl.wms.mapper.KApprovalMapper;
import com.cyl.wms.service.KApprovalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @description:
 * @author: li ying qi
 **/
@Service
public class KApprovalServiceImpl extends ServiceImpl<KApprovalMapper, KApproval> implements KApprovalService {

    @Autowired
    private  KApprovalMapper approvalMapper;
    @Override
    public int approvalService(KApproval approval) {
        return approvalMapper.insert(approval);
    }

    @Override
    public List<KApproval> getApprovalListByAid(Long applicationId) {
        QueryWrapper<KApproval> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("application_id",applicationId);
        queryWrapper.orderByAsc("approval_time");
        return approvalMapper.selectList(queryWrapper);
    }
}
