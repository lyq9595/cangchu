package com.cyl.wms.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.cyl.wms.domain.KApproval;
import com.cyl.wms.domain.KCar;

import java.util.List;

public interface KApprovalService extends IService<KApproval> {
    int approvalService(KApproval approval);

    List<KApproval> getApprovalListByAid(Long applicationId);
}
