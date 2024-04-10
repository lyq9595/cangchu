package com.cyl.wms.controller;

import com.cyl.wms.commonutils.Result;
import com.cyl.wms.domain.KContent;
import com.cyl.wms.service.KContentService;
import com.cyl.wms.utils.DateUtils;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

/**
 * @description:
 * @author: li ying qi
 **/
@Api(description = "审核信息接口列表")
@RestController
@RequestMapping("/wms/examine")
@CrossOrigin
public class ExamineController {

    @Autowired
    private KContentService contentService;

    @GetMapping("/getConfirmInfo/{id}")
    public Result getConfirmInfo(@PathVariable String id) throws Exception {
        Long applicationId = Long.valueOf(id);
        List<KContent> contentList=contentService.getConfirmInfo(applicationId);
        return Result.ok().data("rows",contentList);
    }

}
