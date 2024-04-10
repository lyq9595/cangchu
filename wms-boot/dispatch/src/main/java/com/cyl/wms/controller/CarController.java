package com.cyl.wms.controller;

import com.cyl.wms.commonutils.Result;
import com.cyl.wms.domain.KCar;
import com.cyl.wms.domain.KEmploy;
import com.cyl.wms.pojo.vo.KCarVo;
import com.cyl.wms.service.KCarService;
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
@Api(description = "公司信息接口列表")
@RestController
@RequestMapping("/wms/car")
@CrossOrigin
public class CarController {

    @Autowired
    private KCarService carService;

    @GetMapping("/getCarByCompanyId/{id}/{startTime}/{endTime}")
    public Result getCarByCompanyId(@PathVariable long id,@PathVariable String startTime,@PathVariable String endTime) throws Exception {
        Date start = DateUtils.parseString2Date(startTime,"yyyy-MM-dd");
        Date end = DateUtils.parseString2Date(endTime,"yyyy-MM-dd");
        List<KCarVo> cars = carService.getCarByCompanyId(id, start, end);
        return  Result.ok().data("rows",cars);
    }

    @PostMapping("/getListByCarIds")
    public Result getListByEmployIds(@RequestBody Long[] Ids) throws Exception {
        List<KCar> carList = carService.getListByCarIds(Ids);

        return  Result.ok().data("rows",carList);
    }

    @GetMapping("/getCBycId/{id}")
    public Result getCBycId(@PathVariable long id)   {
        return  carService.getCBycId(id);
    }
}
