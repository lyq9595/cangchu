package com.cyl.wms.pojo.po;

import com.ruoyi.common.annotation.Excel;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.Map;

/**
 * @description:
 * @author: li ying qi
 **/
@ApiModel(description="调度派工对象视图")
@Data
public class ApplicationPo {
    private static final long serialVersionUID = 1L;

    @ApiModelProperty("派公单主键")
    private Long applicationId;


}
