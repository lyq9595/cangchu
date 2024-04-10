package com.cyl.wms.pojo.vo;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.ruoyi.common.annotation.Excel;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.time.LocalDateTime;
import java.util.List;

/**
 * @description:
 * @author: li ying qi
 **/
@ApiModel(description="调度派工对象视图")
@Data
public class ApplicationVo {
    private static final long serialVersionUID = 1L;

    @ApiModelProperty("派公单主键")
    private Long applicationId;

    @ApiModelProperty("市场类型名称 内部 外部")
    @Excel(name = "市场类型名称 内部 外部")
    private String marketTypeName;

    @ApiModelProperty("装载 零活 倒料 小车派工")
    @Excel(name = "装载 零活 倒料 小车派工")
    private String dispatchTypeName;

    @ApiModelProperty("当前状态名称")
    @Excel(name = "当前状态名称")
    private String currentStatusName;

    @ApiModelProperty("逻辑删除")
    @Excel(name = "逻辑删除")
    private Integer delete;

    @ApiModelProperty("用工部门")
    @Excel(name = "用工部门")
    private String applyDeptName;

    @ApiModelProperty("用工班组")
    @Excel(name = "用工班组")
    private String applyGroupName;

    @ApiModelProperty("用工描述")
    @Excel(name = "用工描述")
    private String employDesc;

    @ApiModelProperty("记录创建人id")
    @Excel(name = "记录创建人id")
    private Long creator;

    @ApiModelProperty("记录创建人")
    @Excel(name = "记录创建人")
    private String creatorName;

    @ApiModelProperty("创建时间")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private LocalDateTime createTime;

    @ApiModelProperty("更新时间")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private LocalDateTime updateTime;

    @ApiModelProperty("START_TIME")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    @Excel(name = "START_TIME", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss")
    private LocalDateTime startTime;

    @ApiModelProperty("END_TIME")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    @Excel(name = "END_TIME", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss")
    private LocalDateTime endTime;

    @ApiModelProperty(value = "派工人员数据")
    private List<KEmployVo> personData;

    @ApiModelProperty(value = "用车数据")
    private List<KEmployVo> carData ;

}
