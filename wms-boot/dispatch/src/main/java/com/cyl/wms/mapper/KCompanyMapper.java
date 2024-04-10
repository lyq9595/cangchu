package com.cyl.wms.mapper;

import java.util.List;
import com.cyl.wms.domain.KCompany;

/**
 * 公司管理Mapper接口
 * 
 * @author ruoyi
 * @date 2023-02-22
 */
public interface KCompanyMapper 
{
    /**
     * 查询公司管理
     * 
     * @param companyId 公司管理主键
     * @return 公司管理
     */
    public KCompany selectKCompanyByCompanyId(Long companyId);

    /**
     * 查询公司管理列表
     * 
     * @param kCompany 公司管理
     * @return 公司管理集合
     */
    public List<KCompany> selectKCompanyList(KCompany kCompany);

    /**
     * 新增公司管理
     * 
     * @param kCompany 公司管理
     * @return 结果
     */
    public int insertKCompany(KCompany kCompany);

    /**
     * 修改公司管理
     * 
     * @param kCompany 公司管理
     * @return 结果
     */
    public int updateKCompany(KCompany kCompany);

    /**
     * 删除公司管理
     * 
     * @param companyId 公司管理主键
     * @return 结果
     */
    public int deleteKCompanyByCompanyId(Long companyId);

    /**
     * 批量删除公司管理
     * 
     * @param companyIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteKCompanyByCompanyIds(Long[] companyIds);
}
