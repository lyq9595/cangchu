package com.cyl.wms.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.cyl.wms.domain.Company;
import com.cyl.wms.mapper.CompanyMapper;
import com.cyl.wms.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 * 讲师 服务实现类
 * </p>
 *
 * @author lyq
 * @since 2023-02-01
 */
@Service
public class CompanyServiceImpl extends ServiceImpl<CompanyMapper, Company> implements CompanyService {

    @Autowired
    private CompanyMapper companyMapper;


    @Override
    public List<Company> getEmployCompany() {
        return companyMapper.getEmployCompany();
    }


    @Override
    public List<Company> getCarCompany() {
        return companyMapper.getCarCompany();
    }


}
