package com.cyl.wms.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.cyl.wms.domain.KApplicationEmploy;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;


public interface KApplicationEmployMapper extends BaseMapper<KApplicationEmploy> {

    @Select("select employ_id from k_application_employ where application_id=#{applicationId} and deleted=0")
    List<Long> getEmployIds(Long applicationId);

    @Select("select employ_id from k_application_employ where application_id=#{applicationId} and deleted=1")
    List<Long> getHistoryEmployIds(Long applicationId);

    @Update("update k_application_employ set deleted=1 where application_id=#{id}")
    void deleteRelation(Long id);
}
