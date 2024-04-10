package com.cyl.wms.domain;


import java.time.LocalDate;
import com.ruoyi.common.annotation.Excel;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import com.baomidou.mybatisplus.annotation.TableName;
/**
 * 公司信息表对象 k_company
 *
 * @author zcc
 */
@ApiModel(description="公司信息表对象")
@Data
@TableName("k_company")
public class KCompany {
    private static final long serialVersionUID = 1L;

    @ApiModelProperty("公司ID")
    private Long companyId;

    @ApiModelProperty("公司名称")
    @Excel(name = "公司名称")
    private String companyName;

    @ApiModelProperty("公司地址")
    @Excel(name = "公司地址")
    private String companyAddress;

    @ApiModelProperty("公司代表")
    @Excel(name = "公司代表")
    private String companyLead;

    @ApiModelProperty("公司联系电话")
    @Excel(name = "公司联系电话")
    private String companyPhone;

    @ApiModelProperty("公司创建时间")
    @Excel(name = "公司创建时间", width = 30, dateFormat = "yyyy-MM-dd")
    private LocalDate establishTime;

    @ApiModelProperty("记录创建时间")
    private LocalDate createTime;

    @ApiModelProperty("记录更新时间")
    private LocalDate updateTime;

}
