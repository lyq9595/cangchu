package com.cyl.wms.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.ruoyi.common.annotation.Excel;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import com.baomidou.mybatisplus.annotation.TableName;
/**
 * 申请单与对应人员表对象 k_application_employ
 *
 * @author zcc
 */
@ApiModel(description="申请单与对应人员表对象")
@Data
@TableName("k_application_employ")
public class KApplicationEmploy {
    private static final long serialVersionUID = 1L;

    @ApiModelProperty("APPLICATION_ID")
    @Excel(name = "APPLICATION_ID")
    @TableId(value = "application_id", type = IdType.ID_WORKER)
    private Long applicationId;

    @ApiModelProperty("EMPLOY_ID")
    @Excel(name = "EMPLOY_ID")
    private Long employId;

}
