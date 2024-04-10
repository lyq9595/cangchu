package com.cyl.wms.pojo.vo;



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
 * 车辆信息表对象 k_car
 *
 * @author lyq
 */
@ApiModel(description="车辆信息表对象")
@Data
@TableName("k_car")
public class KCarVo {
    private static final long serialVersionUID = 1L;

    @ApiModelProperty("车id")
    @TableId(value = "application_id", type = IdType.ID_WORKER)
    @JsonSerialize(using= ToStringSerializer.class)
    private Long carId;

    @ApiModelProperty("车牌号")
    @Excel(name = "车牌号")
    private String carLicense;

    @ApiModelProperty("司机")
    @Excel(name = "司机")
    private String carDriver;

    @ApiModelProperty("车辆单价花费")
    @Excel(name = "车辆单价花费")
    private Integer carCost;

    @ApiModelProperty("车辆类型如:轿车、货车、拖车、动车、牵引车、推顶车")
    @Excel(name = "车辆类型如:轿车、货车、拖车、动车、牵引车、推顶车")
    private String carTypeName;

    @ApiModelProperty("CAR_NUMBER")
    @Excel(name = "CAR_NUMBER")
    private String carNumber;

    @ApiModelProperty("CAR_PHONE")
    @Excel(name = "CAR_PHONE")
    private String carPhone;

    @ApiModelProperty("DELETED")
    @Excel(name = "DELETED")
    private Integer deleted;

    @ApiModelProperty("IS_JOB")
    @Excel(name = "IS_JOB")
    private Integer isJob;

    @ApiModelProperty("COMPANY_ID")
    @Excel(name = "COMPANY_ID")
    @JsonSerialize(using= ToStringSerializer.class)
    private Long companyId;

    @ApiModelProperty("COMPANY_NAME")
    @Excel(name = "COMPANY_NAME")
    private String companyName;

}
