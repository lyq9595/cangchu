package com.cyl.wms.controller;

import com.cyl.wms.commonutils.Result;
import com.cyl.wms.domain.KEmploy;
import com.cyl.wms.pojo.vo.KEmployVo;
import com.cyl.wms.service.KEmployService;
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
@Api(description = "员工信息接口列表")
@RestController
@RequestMapping("/wms/employ")
@CrossOrigin
public class EmployController {

    @Autowired
    private KEmployService employService;

    @GetMapping("/getEmployByCompanyId/{id}/{startTime}/{endTime}")
    public Result getEmployByCompanyId(@PathVariable long id,@PathVariable String startTime,@PathVariable String endTime) throws Exception {
        Date start = DateUtils.parseString2Date(startTime,"yyyy-MM-dd");
        Date end = DateUtils.parseString2Date(endTime,"yyyy-MM-dd");

        return  employService.getEmployByCompanyId(id,start,end);
    }

    @PostMapping("/getListByEmployIds")
    public Result getListByEmployIds(@RequestBody Long[] Ids)   {
        List<KEmploy> employList = employService.getListByEmployIds(Ids);
        return  Result.ok().data("rows",employList);
    }

    @GetMapping("/getEByeId/{id}")
    public Result getEByeId(@PathVariable long id)   {
        return  employService.getEByeId(id);
    }



}
