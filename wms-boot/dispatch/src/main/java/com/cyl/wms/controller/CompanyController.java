package com.cyl.wms.controller;

import com.cyl.wms.commonutils.Result;
import com.cyl.wms.service.CompanyService;
import com.ruoyi.common.core.controller.BaseController;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * 调度派工Controller
 *
 */
@Api(description = "公司信息接口列表")
@RestController
@RequestMapping("/wms/company")
@CrossOrigin
public class CompanyController extends BaseController {

    @Autowired
    private CompanyService companyService;

    @Autowired

    @GetMapping("/getEmployCompany")
    public Result getEmployCompany(){
        return Result.ok().data("rows",companyService.getEmployCompany());
    }
    @GetMapping("/getCarCompany")
    public Result getCarCompany(){
        return Result.ok().data("rows",companyService.getCarCompany());
    }






}













