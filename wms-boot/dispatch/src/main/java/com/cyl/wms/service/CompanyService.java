package com.cyl.wms.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.cyl.wms.domain.Company;

import java.util.List;

/**
 * <p>
 * 讲师 服务类
 * </p>
 *
 * @author lyq
 * @since 2023-02-01
 */
public interface CompanyService extends IService<Company> {

    List<Company> getEmployCompany();

    List<Company> getCarCompany();


}
