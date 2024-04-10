package com.cyl.wms.controller;

import com.cyl.wms.commonutils.Result;
import com.cyl.wms.service.KApplicationService;
import com.cyl.wms.service.KDispatchService;
import com.cyl.wms.utils.DateUtils;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Date;

/**
 * @description:
 * @author: li ying qi
 **/
@Api(description = "派工申请接口列表")
@RestController
@RequestMapping("/wms/dispatch")
@CrossOrigin
public class DispatchController {

    @Autowired
    private KDispatchService dispatchService;


    /**
     * 创建派工单与员工关联
     * @param applicationId
     * @param Ids
     * @return
     */
    @PostMapping("/createRelationEmploy/{applicationId}")
    public Result createRelationEmploy(@PathVariable String applicationId,@RequestBody Long[] Ids){
        Long aId = Long.valueOf(applicationId);
            dispatchService.createRelationEmploy(aId,Ids);
        return Result.ok();
    }

    @PostMapping("/deleteRelationEmploy")
    public Result deleteRelationEmploy(@PathVariable String applicationId,@RequestBody Long[] Ids){

        return null;

    }

    /**
     * 建立派工单与车辆关联
     * @param applicationId
     * @param Ids
     * @return
     */
    @PostMapping("/createRelationVehicle/{applicationId}")
    public Result createRelationVehicle(@PathVariable String applicationId,@RequestBody Long[] Ids){
        Long aId = Long.valueOf(applicationId);
        dispatchService.createRelationVehicle(aId,Ids);
        return Result.ok();

    }

    @PostMapping("/deleteRelationVehicle")
    public Result deleteRelationVehicle(@PathVariable String applicationId,@RequestBody Long[] Ids){

        return null;

    }




    /**
     * 派工申请单状态改变值
     * @param applicationId
     * @return
     */
    @PostMapping("rejectApplication/{applicationId}")
    public Result rejectApplication(@PathVariable String applicationId) {
        if (dispatchService.rejectApplication(Long.valueOf(applicationId)) > 0) return Result.ok().message("提交成功");
        else return Result.error().message("提交失败");
    }
}
