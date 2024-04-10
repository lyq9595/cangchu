package com.cyl.wms.controller;

import com.cyl.wms.commonutils.Result;
import com.cyl.wms.domain.KApplication;
import com.cyl.wms.domain.KApproval;
import com.cyl.wms.pojo.vo.KApprovalVo;
import com.cyl.wms.service.KApplicationService;
import com.cyl.wms.service.KApprovalService;
import com.ruoyi.common.core.controller.BaseController;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.datetime.joda.LocalTimeParser;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

/**
 * @description:
 * @author: li ying qi
 **/
@Api(description = "派工申请接口列表")
@RestController
@RequestMapping("/wms/approval")
@CrossOrigin
public class ApprovalController extends BaseController {

    @Autowired
    private KApprovalService approvalService;

    @PostMapping("addApproval")
    public Result addApproval(@RequestBody KApprovalVo approvalVo) {
        KApproval approval=new KApproval();
        System.out.println(approvalVo.getIsReject());
        approval.setApplicationId(Long.valueOf(approvalVo.getApplicationId()));
        approval.setApprovalDesc(approvalVo.getApprovalDesc());
        approval.setApprovalNode(approvalVo.getApprovalNode());
        approval.setApprovalTime(LocalDateTime.now());
        approval.setApprovalUserName(approvalVo.getApprovalUserName());
        approval.setIsReject(approvalVo.getIsReject());
        int i = approvalService.approvalService(approval);
        if (i > 0) return Result.ok().message("新增成功");
        else return Result.error().message("新增失败");
    }

    @GetMapping("getApprovalListByAid/{applicationIdStr}")
    public Result getApprovalListByAid(@PathVariable String applicationIdStr) {
        Long applicationId = Long.valueOf(applicationIdStr);
        List<KApproval> approvalList = approvalService.getApprovalListByAid(applicationId);
        if (approvalList != null) return Result.ok().data("rows", approvalList);
        else return Result.error().message("查询失败");
    }
}
