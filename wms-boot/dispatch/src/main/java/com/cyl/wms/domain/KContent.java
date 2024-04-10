package com.cyl.wms.domain;

/**
 * @description:
 * @author: li ying qi
 **/

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
 * 对象 k_content
 *
 * @author lyq
 */
@ApiModel(description="【请填写功能名称】对象")
@Data
@TableName("k_content")
public class KContent {
    private static final long serialVersionUID = 1L;

    @ApiModelProperty("CONTENT_ID")
    @TableId(value = "content_id", type = IdType.ID_WORKER)
    @JsonSerialize(using= ToStringSerializer.class)
    private Long contentId;

    @ApiModelProperty("CONTENT_SPECIFICATIONS")
    @Excel(name = "CONTENT_SPECIFICATIONS")
    private String contentSpecifications;

    @ApiModelProperty("CONTENT_NUM")
    @Excel(name = "CONTENT_NUM")
    private Integer contentNum;

    @ApiModelProperty("CONTENT_AID")
    @Excel(name = "CONTENT_AID")
    private Long contentAid;

    @ApiModelProperty("CONTENT_WEIGHT")
    @Excel(name = "CONTENT_WEIGHT")
    private Integer contentWeight;

    private String employText;

    private String carText;

}
