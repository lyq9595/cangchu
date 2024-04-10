package com.cyl.wms.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.cyl.wms.commonutils.Result;
import com.cyl.wms.domain.KContent;

import java.util.List;

/**
 * <p>
 * 讲师 服务类
 * </p>
 *
 * @author lyq
 * @since 2023-02-01
 */
public interface KContentService extends IService<KContent> {


    Result getEmployAndCarListByAid(Long applicationId);

    Long addContent(String contentSpecification, Integer contentWeight, Integer contentNum, String employText, String carText, Long applicationId);

    void addContentAndEmploy(Long contentId, Long eId);

    void addContentAndCar(Long contentId, Long cId);

    List<KContent> getConfirmInfo(Long applicationId);

    Result getHistoryEmployAndCarListByAid(Long applicationId);
}
