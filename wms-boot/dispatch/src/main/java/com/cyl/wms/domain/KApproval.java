package com.cyl.wms.domain;

/**
 * @description:
 * @author: li ying qi
 * <p>
 * 审批表
 * 对象 k_approval
 * @author zcc
 * <p>
 * 审批表
 * 对象 k_approval
 * @author zcc
 */

/**
 * 审批表
 对象 k_approval
 *
 * @author zcc
 */

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.ruoyi.common.annotation.Excel;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.time.LocalDateTime;

@ApiModel(description = "审批表对象")
@Data
@TableName("k_approval")
public class KApproval {
    private static final long serialVersionUID = 1L;

    @ApiModelProperty("审批id")
    @TableId(value = "approval_id", type = IdType.ID_WORKER)
    private Long approvalId;

    @ApiModelProperty("审批人")
    @Excel(name = "审批人")
    private String approvalUserName;

    @ApiModelProperty("审批描述")
    @Excel(name = "审批描述")
    private String approvalDesc;

    @ApiModelProperty("审批时间")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    @Excel(name = "审批时间", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss")
    private LocalDateTime approvalTime;

    @ApiModelProperty("审批是否通过 1为通过 0为驳回")
    @Excel(name = "审批是否通过 1为通过 0为驳回")
    private Integer isReject;

    @ApiModelProperty("审批结点")
    @Excel(name = "审批结点")
    private String approvalNode;

    @ApiModelProperty("审批单号")
    @Excel(name = "审批单号")
    private Long applicationId;

}
