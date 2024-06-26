package com.cyl.wms.pojo.vo;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @description:
 * @author: li ying qi
 **/
@Data
public class ApplicationQuery {
    @ApiModelProperty(value = "用工部门")
    private String applicationDeptName;

    @ApiModelProperty(value = "用工组")
    private String applicationGroupName;

    @ApiModelProperty(value = "查询开始时间", example = "2019-01-01 10:10:10")
    private String begin;//注意，这里使用的是String类型，前端传过来的数据无需进行类型转换

    @ApiModelProperty(value = "查询结束时间", example = "2019-12-01 10:10:10")
    private String end;


}

















