package com.cyl.wms.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.cyl.wms.commonutils.Result;
import com.cyl.wms.domain.KApplication;
import com.cyl.wms.pojo.vo.ApplicationQuery;

/**
 * <p>
 * 讲师 服务类
 * </p>
 *
 * @author lyq
 * @since 2023-02-01
 */
public interface KApplicationService extends IService<KApplication> {

    public Result queryApplicationByPage(Integer currentStatusCode, long current, long limit, ApplicationQuery applicationQuery);

    Long addApplication(KApplication application);

    KApplication getApplicationById(Long applicationId);

    int updateApplication(KApplication application);

    int updateApplicationSubmit(Long applicationId);
}
