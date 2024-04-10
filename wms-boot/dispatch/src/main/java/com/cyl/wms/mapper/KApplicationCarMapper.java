package com.cyl.wms.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.cyl.wms.domain.KApplicationCar;
import com.cyl.wms.domain.KApplicationEmploy;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;


public interface KApplicationCarMapper extends BaseMapper<KApplicationCar> {

    @Update("update k_application_car set deleted=1 where application_id=#{id}")
     void deleteRelation(Long id) ;


    @Select("select car_id from k_application_car where application_id=#{applicationId} and deleted=0")
    List<Long> getCarIds(Long applicationId);

    @Select("select car_id from k_application_car where application_id=#{applicationId} and deleted=1")
    List<Long> getHistoryCarIds(Long applicationId);
}
