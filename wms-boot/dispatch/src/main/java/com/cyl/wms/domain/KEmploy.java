package com.cyl.wms.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import com.ruoyi.common.annotation.Excel;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * 【请填写功能名称】对象 k_company
 *
 * @author lyq
 */
@ApiModel(description="对象")
@Data
@TableName("k_employ")
public class KEmploy {
    private static final long serialVersionUID = 1L;

    @ApiModelProperty("EMPLOY_ID")
    @TableId(value = "employ_id", type = IdType.ID_WORKER)
    @JsonSerialize(using= ToStringSerializer.class)
    private Long employId;

    @ApiModelProperty("EMPLOY_NAME")
    @Excel(name = "EMPLOY_NAME")
    private String employName;

    @ApiModelProperty("COMPANY_ID")
    @Excel(name = "COMPANY_ID")
    @JsonSerialize(using= ToStringSerializer.class)
    private Long companyId;


    @ApiModelProperty("EMPLOY_TYPE")
    @Excel(name = "EMPLOY_TYPE")
    private String employType;

    @ApiModelProperty("EMPLOY_PHONE")
    @Excel(name = "EMPLOY_PHONE")
    private String employPhone;

    @ApiModelProperty("EMPLOY_COST")
    @Excel(name = "EMPLOY_COST")
    private Long employCost;

    @ApiModelProperty("EMPLOY_NUMBER")
    @Excel(name = "EMPLOY_NUMBER")
    private String employNumber;

    @ApiModelProperty("IS_JOB")
    @Excel(name = "IS_JOB")
    private Integer isJob;
}
