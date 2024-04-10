package com.cyl.wms.domain;

import com.baomidou.mybatisplus.annotation.TableName;
import com.ruoyi.common.annotation.Excel;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @description:
 * @author: li ying qi
 **/

/**
 * 【请填写功能名称】对象 k_content_relation
 *
 * @author lyq
 */
@ApiModel(description="【请填写功能名称】对象")
@Data
@TableName("k_content_car")
public class KContentCar {

        private static final long serialVersionUID = 1L;

        @ApiModelProperty("CONTENT_ID")
        @Excel(name = "CONTENT_ID")
        private Long contentId;

        @ApiModelProperty("CAR_ID")
        @Excel(name = "CAR_ID")
        private Long carId;




}
