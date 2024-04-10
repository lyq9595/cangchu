package com.cyl.wms.controller;

import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.cyl.wms.commonutils.Result;
import com.cyl.wms.domain.KApplication;
import com.cyl.wms.pojo.vo.ApplicationQuery;
import com.ruoyi.common.core.controller.BaseController;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * 调度派工Controller
 *
 * @author lyq
 * @date 2023-02-03
 */
@Api(description = "派工申请接口列表")
@RestController
@RequestMapping("/wms/dispatch")
@CrossOrigin
public class ApplicationController extends BaseController {

    @Autowired
    private com.cyl.wms.service.KApplicationService KApplicationService;

    @GetMapping("test")
    public String test() {
        return "abc";
    }

    /**
     * 分页查询派工申请单
     *
     * @param current
     * @param limit
     * @param applicationQuery
     * @return
     */
    @PostMapping("pageApplicationCondition/{currentStatusCode}/{current}/{limit}")
    public Result queryApplicationByPage(
            @PathVariable Integer currentStatusCode,
            @PathVariable long current,
            @PathVariable long limit,
            @RequestBody(required = false) ApplicationQuery applicationQuery) {
        return KApplicationService.queryApplicationByPage(currentStatusCode,current, limit, applicationQuery);
    }

    @PostMapping("addApplication")
    public Result addApplication(@RequestBody KApplication application) {
        Long lastInsertId = KApplicationService.addApplication(application);
        String id = String.valueOf(lastInsertId);
        System.out.println(id);
         return Result.ok().data("id",id);

    }

    @GetMapping("getApplicationById")
    public Result getApplicationById(String applicationIdStr) {
        Long applicationId = Long.valueOf(applicationIdStr);
        KApplication application = KApplicationService.getApplicationById(applicationId);
        if (application != null) return Result.ok().data("rows", application);
        else return Result.error().message("查询失败");
    }

    @PostMapping("updateApplication")
    public Result updateApplication(@RequestBody KApplication application) {
        if (KApplicationService.updateApplication(application) > 0) return Result.ok().message("更新成功");
        else return Result.error().message("更新失败");
    }

    @PostMapping("updateApplicationSubmit/{applicationId}")
    public Result updateApplicationSubmit(@PathVariable String applicationId) {
        if (KApplicationService.updateApplicationSubmit(Long.valueOf(applicationId)) > 0) return Result.ok().message("修改提交成功");
        else return Result.error().message("提交失败");
    }

    @DeleteMapping("deleteApplication")
    public Result deleteApplication(String applicationId) {
        if (KApplicationService.removeById(Long.valueOf(applicationId))) return Result.ok().message("删除成功");
        else return Result.error().message("删除失败");
    }



}













