package com.cyl.wms.domain;


import java.time.LocalDateTime;
import java.util.Date;

import com.baomidou.mybatisplus.annotation.*;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import com.ruoyi.common.annotation.Excel;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.models.auth.In;
import lombok.Data;

/**
 * 调度派工对象 k_application
 *
 * @author lyq
 */
@ApiModel(description="调度派工对象")
@Data
@TableName("k_application")
public class KApplication {
    private static final long serialVersionUID = 1L;

    @ApiModelProperty("派公单主键")
    @TableId(value = "application_id" ,type = IdType.ID_WORKER)
    @JsonSerialize(using= ToStringSerializer.class)
    private Long applicationId;

    @ApiModelProperty("市场类型名称 内部 外部")
    @Excel(name = "市场类型名称 内部 外部")
    private String marketTypeName;

    @ApiModelProperty("装载 零活 倒料 小车派工")
    @Excel(name = "装载 零活 倒料 小车派工")
    private String dispatchTypeName;

    @ApiModelProperty("装载 零活 倒料 小车派工")
    @Excel(name = "装载 零活 倒料 小车派工")
    private String workTypeName;

    @ApiModelProperty("当前状态名称")
    @Excel(name = "当前状态名称")
    private Integer currentStatusCode;

    @ApiModelProperty("逻辑删除")
    @Excel(name = "逻辑删除")
    private Integer deleted;

    @ApiModelProperty("用工部门")
    @Excel(name = "用工部门")
    private String applyDeptName;

    @ApiModelProperty("用工班组")
    @Excel(name = "用工班组")
    private String applyGroupName;

    @ApiModelProperty("EMPLOY_DESC")
    @Excel(name = "EMPLOY_DESC")
    private String employDesc;

    @ApiModelProperty("记录创建人id")
    @Excel(name = "记录创建人id")
    private Long creator;

    @ApiModelProperty("记录创建人")
    @Excel(name = "记录创建人")
    private String creatorName;

    @ApiModelProperty("创建时间")
    @JsonFormat(pattern = "yyyy-MM-dd",timezone = "GMT+8")
    @TableField(fill = FieldFill.INSERT)
    private Date createTime;

    @ApiModelProperty("更新时间")
    @JsonFormat(pattern = "yyyy-MM-dd",timezone = "GMT+8")
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private Date updateTime;

    @ApiModelProperty("START_TIME")
    @JsonFormat(pattern = "yyyy-MM-dd",timezone = "GMT+8")
    @Excel(name = "START_TIME", width = 30, dateFormat = "yyyy-MM-dd")
    private Date startTime;

    @ApiModelProperty("END_TIME")
    @JsonFormat(pattern = "yyyy-MM-dd",timezone = "GMT+8")
    @Excel(name = "END_TIME", width = 30, dateFormat = "yyyy-MM-dd")
    private Date endTime;

    @ApiModelProperty("是否被驳回")
    @Excel(name = "是否被驳回")
    private Integer isReject;

    @ApiModelProperty("REMARK")
    @Excel(name = "REMARK")
    private String remark;

}
