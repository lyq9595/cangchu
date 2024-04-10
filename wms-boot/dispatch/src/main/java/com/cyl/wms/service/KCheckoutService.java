package com.cyl.wms.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.cyl.wms.commonutils.Result;
import com.cyl.wms.domain.KCheckout;
import com.cyl.wms.pojo.vo.ApplicationQuery;

import java.util.List;


public interface KCheckoutService extends IService<KCheckout> {
    void generateCheckout(Long id);


    Result queryCheckoutByPage( long current, long limit, ApplicationQuery applicationQuery);

    void updateCheckoutStatus(Long id);

    void updateApplicationECRelation(Long id);

    List<KCheckout> queryCheckInfoByAid(Long applicationId);
}
