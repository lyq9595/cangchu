package com.cyl.wms.service.impl;

import java.time.LocalDateTime;
import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cyl.wms.mapper.KCompanyMapper;
import com.cyl.wms.domain.KCompany;
import com.cyl.wms.service.IKCompanyService;

/**
 * 公司管理Service业务层处理
 *
 * @author ruoyi
 * @date 2023-02-22
 */
@Service
public class KCompanyServiceImpl implements IKCompanyService
{
    @Autowired
    private KCompanyMapper kCompanyMapper;

    /**
     * 查询公司管理
     *
     * @param companyId 公司管理主键
     * @return 公司管理
     */
    @Override
    public KCompany selectKCompanyByCompanyId(Long companyId)
    {
        return kCompanyMapper.selectKCompanyByCompanyId(companyId);
    }

    /**
     * 查询公司管理列表
     *
     * @param kCompany 公司管理
     * @return 公司管理
     */
    @Override
    public List<KCompany> selectKCompanyList(KCompany kCompany)
    {
        return kCompanyMapper.selectKCompanyList(kCompany);
    }

    /**
     * 新增公司管理
     *
     * @param kCompany 公司管理
     * @return 结果
     */
    @Override
    public int insertKCompany(KCompany kCompany)
    {
        return kCompanyMapper.insertKCompany(kCompany);
    }

    /**
     * 修改公司管理
     *
     * @param kCompany 公司管理
     * @return 结果
     */
    @Override
    public int updateKCompany(KCompany kCompany)
    {

        return kCompanyMapper.updateKCompany(kCompany);
    }

    /**
     * 批量删除公司管理
     *
     * @param companyIds 需要删除的公司管理主键
     * @return 结果
     */
    @Override
    public int deleteKCompanyByCompanyIds(Long[] companyIds)
    {
        return kCompanyMapper.deleteKCompanyByCompanyIds(companyIds);
    }

    /**
     * 删除公司管理信息
     *
     * @param companyId 公司管理主键
     * @return 结果
     */
    @Override
    public int deleteKCompanyByCompanyId(Long companyId)
    {
        return kCompanyMapper.deleteKCompanyByCompanyId(companyId);
    }
}
