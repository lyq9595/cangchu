package com.cyl.wms.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import com.ruoyi.common.annotation.Excel;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.time.LocalDateTime;
import java.util.Date;

/**
 * 工单结算表对象 k_checkout
 *
 * @author zcc
 */
@ApiModel(description="工单结算表对象")
@Data
@TableName("k_checkout")
public class KCheckout {
    private static final long serialVersionUID = 1L;

    @ApiModelProperty("CHECK_ID")
    @TableId(value = "check_id" ,type = IdType.ID_WORKER)
    @JsonSerialize(using= ToStringSerializer.class)
    private Long checkId;

    @ApiModelProperty("结算状态")
    @Excel(name = "结算状态")
    private Integer checkStatus;

    @ApiModelProperty("派工日期")
    @Excel(name = "派工日期", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd",timezone = "GMT+8")
    private Date applicationTime;

    @ApiModelProperty("APPLICATION_ID")
    @Excel(name = "APPLICATION_ID")
    @JsonSerialize(using= ToStringSerializer.class)
    private Long applicationId;

    @ApiModelProperty("APPLY_DEPT_NAME")
    @Excel(name = "APPLY_DEPT_NAME")
    private String applyDeptName;

    @ApiModelProperty("APPLY_GROUP_NAME")
    @Excel(name = "APPLY_GROUP_NAME")
    private String applyGroupName;

    @ApiModelProperty("DISPATCH_TYPE_NAME")
    @Excel(name = "DISPATCH_TYPE_NAME")
    private String dispatchTypeName;

    @ApiModelProperty("MARKET_TYPE_NAME")
    @Excel(name = "MARKET_TYPE_NAME")
    private String marketTypeName;

    @ApiModelProperty("机力花费")
    @Excel(name = "机力花费")
    private float carCost;

    @ApiModelProperty("人力花费")
    @Excel(name = "人力花费")
    private float laborCost;

    @ApiModelProperty("总花费")
    @Excel(name = "总花费")
    private float totalCost;

    @ApiModelProperty("结算时间")
    @Excel(name = "结算时间", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private LocalDateTime checkTime;

    @ApiModelProperty("WORK_TYPE_NAME")
    @Excel(name = "WORK_TYPE_NAME")
    private String workTypeName;

    @ApiModelProperty("EMPLOY_NUM")
    @Excel(name = "EMPLOY_NUM")
    private Integer employNum;

    @ApiModelProperty("CAR_NUM")
    @Excel(name = "CAR_NUM")
    private Integer carNum;

}
