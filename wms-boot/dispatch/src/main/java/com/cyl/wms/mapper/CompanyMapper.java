package com.cyl.wms.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.cyl.wms.domain.Company;
import org.apache.ibatis.annotations.Select;

import java.util.List;


public interface CompanyMapper extends BaseMapper<Company> {

    @Select("select DISTINCT k_company.* from k_company, k_employ where k_employ.company_id=k_company.company_id GROUP BY k_company.company_name")
    List<Company> getEmployCompany();

    @Select("select DISTINCT k_company.* from k_company, k_car where k_car.company_id=k_company.company_id")
    List<Company>  getCarCompany();
}
