package com.cyl.wms.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.cyl.wms.commonutils.Result;
import com.cyl.wms.domain.KCar;
import com.cyl.wms.pojo.vo.KCarVo;

import java.util.Date;
import java.util.List;

public interface KCarService extends IService<KCar> {
    List<KCarVo> getCarByCompanyId(long id, Date startTime, Date endTime) throws Exception;

    List<KCar> getListByCarIds(Long[] ids);


    Result getCBycId(long id);
}
