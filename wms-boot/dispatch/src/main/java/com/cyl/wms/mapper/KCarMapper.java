package com.cyl.wms.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.cyl.wms.domain.KCar;
import com.cyl.wms.pojo.vo.KCarVo;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface KCarMapper extends BaseMapper<KCar> {

    @Select("select k_company.company_name,k_car.* from k_car , k_company " +
            "where k_car.company_id=#{id} and k_company.company_id=#{id}")
    List<KCarVo> getCarByCompanyId(long id);

    @Select("select application_id from k_application_car where car_id=#{carId} and deleted=0")
    List<Long> getApplicationByCarId(Long carId);
}
