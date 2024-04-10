package com.cyl.wms.controller;

import com.cyl.wms.commonutils.Result;
import com.cyl.wms.domain.KCar;
import com.cyl.wms.domain.KCheckout;
import com.cyl.wms.pojo.vo.ApplicationQuery;
import com.cyl.wms.service.*;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @description:
 * @author: li ying qi
 **/
@Api(description = "公司信息接口列表")
@RestController
@RequestMapping("/wms/checkout")
@CrossOrigin
public class CheckoutController {

    @Autowired
    private KCheckoutService checkoutService;

    @PostMapping("/generateCheckout/{id}")
    public Result generateCheckout(@PathVariable String id) {
        Long applicationId = Long.valueOf(id);
        checkoutService.generateCheckout(applicationId);
        return Result.ok();
    }

    @PostMapping("pageCheckoutCondition/{current}/{limit}")
    public Result queryApplicationByPage(
            @PathVariable long current,
            @PathVariable long limit,
            @RequestBody(required = false) ApplicationQuery applicationQuery) {

        return checkoutService.queryCheckoutByPage(current, limit, applicationQuery);
    }


    @PostMapping("updateCheckoutStatus/{id}")
    public Result updateCheckoutStatus(@PathVariable String id) {
        Long applicationId = Long.valueOf(id);
        checkoutService.updateApplicationECRelation(applicationId);
        checkoutService.updateCheckoutStatus(applicationId);
        return Result.ok();
    }

    @GetMapping("/queryCheckInfoByAid/{id}")
    public Result queryCheckInfoByAid(@PathVariable String id) {
        Long applicationId = Long.valueOf(id);
         List<KCheckout> checkout =checkoutService.queryCheckInfoByAid(applicationId);
        return Result.ok().data("rows",checkout);
    }
}














