package com.cyl.wms.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import com.ruoyi.common.annotation.Excel;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import com.baomidou.mybatisplus.annotation.TableName;
/**
 * 【请填写功能名称】对象 k_company
 *
 * @author zcc
 */
@ApiModel(description="对象")
@Data
@TableName("k_company")
public class Company {
    private static final long serialVersionUID = 1L;

    @ApiModelProperty("COMPANY_ID")
    @TableId(value = "company_id", type = IdType.ID_WORKER)
    @JsonSerialize(using= ToStringSerializer.class)
    private Long companyId;

    @ApiModelProperty("COMPANY_NAME")
    @Excel(name = "COMPANY_NAME")
    private String companyName;

}
