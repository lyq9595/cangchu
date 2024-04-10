package com.cyl.wms.controller;

import com.cyl.wms.commonutils.Result;
import com.cyl.wms.mapper.KContentMapper;
import com.cyl.wms.pojo.vo.KContentListVo;
import com.cyl.wms.service.KContentService;
import com.ruoyi.common.core.controller.BaseController;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.List;

/**
 * @description:
 * @author: li ying qi
 **/
@Api(description = "派工申请接口列表")
@RestController
@RequestMapping("/wms/confirm")
@CrossOrigin
public class ConfirmController  {

    @Autowired
    private KContentService contentService;




    @GetMapping("getEmployAndCarListByAid/{applicationIdStr}")
    public Result getEmployAndCarListByAid(@PathVariable String  applicationIdStr) {
        Long applicationId = Long.valueOf(applicationIdStr);
        return contentService.getEmployAndCarListByAid(applicationId);

    }

    @GetMapping("getHistoryEmployAndCarListByAid/{applicationIdStr}")
    public Result getHistoryEmployAndCarListByAid(@PathVariable String  applicationIdStr) {
        Long applicationId = Long.valueOf(applicationIdStr);
        return contentService.getHistoryEmployAndCarListByAid(applicationId);

    }

    @PostMapping("addContent/{applicationStr}")
    public Result addContent(@RequestBody List<KContentListVo> contentListVo,@PathVariable String applicationStr) {
        Long applicationId = Long.valueOf(applicationStr);
        for (KContentListVo contentItemVo : contentListVo) {
            Long contentId =
                    contentService.addContent(contentItemVo.getContentSpecification(), contentItemVo.getContentWeight(), contentItemVo.getContentNum(),contentItemVo.getEmployText(),contentItemVo.getCarText(), applicationId);
            for (Long eId : contentItemVo.getEIds()) {
                contentService.addContentAndEmploy(contentId,eId);
            }
            for (Long cId : contentItemVo.getCIds()) {
                contentService.addContentAndCar(contentId,cId);
            }
        }
        return Result.ok();
    }

}
