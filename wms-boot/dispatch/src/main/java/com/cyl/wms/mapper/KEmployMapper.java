package com.cyl.wms.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.cyl.wms.domain.KEmploy;
import com.cyl.wms.pojo.vo.KEmployVo;
import org.apache.ibatis.annotations.Select;

import java.util.List;


public interface KEmployMapper extends BaseMapper<KEmploy> {


    @Select("select  k_company.company_name,k_employ.* " +
            "from k_company, k_employ " +
            "where k_company.company_id=${id} and k_employ.company_id=${id}")
    List<KEmployVo> getEmployCompanyById(long id);

    @Select("select application_id from k_application_employ where employ_id=#{employId} and deleted=0")
    List<Long> getApplicationByEmployId(Long employId);
}
