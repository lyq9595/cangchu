package com.cyl.wms.controller;

import java.awt.geom.Area;
import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.cyl.wms.domain.KCompany;
import com.cyl.wms.service.IKCompanyService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 公司管理Controller
 *
 * @author ruoyi
 * @date 2023-02-22
 */
@RestController
@RequestMapping("/wms/company")
public class KCompanyController extends BaseController
{
    @Autowired
    private IKCompanyService kCompanyService;

    /**
     * 查询公司管理列表
     */
    @PreAuthorize("@ss.hasPermi('wms:company:list')")
    @GetMapping("/list")
    public TableDataInfo list(KCompany kCompany)
    {
        startPage();
        List<KCompany> list = kCompanyService.selectKCompanyList(kCompany);
        return getDataTable(list);
    }

    /**
     * 导出公司管理列表
     */
    @PreAuthorize("@ss.hasPermi('wms:company:export')")
    @Log(title = "公司管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, KCompany kCompany) throws IOException {
        List<KCompany> list = kCompanyService.selectKCompanyList(kCompany);
        ExcelUtil<KCompany> util = new ExcelUtil<KCompany>(KCompany.class);
        util.exportExcel(response, list, "公司管理数据");
    }

    /**
     * 获取公司管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('wms:company:query')")
    @GetMapping(value = "/{companyId}")
    public ResponseEntity<KCompany> getInfo(@PathVariable("companyId") Long companyId)
    {
        return ResponseEntity.ok(kCompanyService.selectKCompanyByCompanyId(companyId));
    }

    /**
     * 新增公司管理
     */
    @PreAuthorize("@ss.hasPermi('wms:company:add')")
    @Log(title = "公司管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody KCompany kCompany)
    {
        return toAjax(kCompanyService.insertKCompany(kCompany));
    }

    /**
     * 修改公司管理
     */
    @PreAuthorize("@ss.hasPermi('wms:company:edit')")
    @Log(title = "公司管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody KCompany kCompany)
    {
        return toAjax(kCompanyService.updateKCompany(kCompany));
    }

    /**
     * 删除公司管理
     */
    @PreAuthorize("@ss.hasPermi('wms:company:remove')")
    @Log(title = "公司管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{companyIds}")
    public AjaxResult remove(@PathVariable Long[] companyIds)
    {
        return toAjax(kCompanyService.deleteKCompanyByCompanyIds(companyIds));
    }
}
