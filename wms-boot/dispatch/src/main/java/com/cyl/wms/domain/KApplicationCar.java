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
 * 申请单关联表对象 k_application_car
 *
 * @author zcc
 */
@ApiModel(description="申请单关联表对象")
@Data
@TableName("k_application_car")
public class KApplicationCar {
    private static final long serialVersionUID = 1L;

    @ApiModelProperty("车id")
    @Excel(name = "车id")
    @TableId(value = "car_id" ,type = IdType.ID_WORKER)
    @JsonSerialize(using= ToStringSerializer.class)
    private Long carId;

    @ApiModelProperty("申请单id")
    @Excel(name = "申请单id")
    private Long applicationId;

}
