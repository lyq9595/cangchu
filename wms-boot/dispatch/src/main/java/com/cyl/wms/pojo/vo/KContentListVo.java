package com.cyl.wms.pojo.vo;

import com.fasterxml.jackson.annotation.JsonProperty;
import io.swagger.annotations.ApiModel;
import lombok.Data;

import java.util.List;

/**
 * @description:
 * @author: li ying qi
 **/
@ApiModel(description="对象")
@Data
public class KContentListVo {
    private static final long serialVersionUID = 1L;

    private String contentSpecification;

    private Integer contentWeight;

    private Integer contentNum;


    private String employText;
    private String carText;


    @JsonProperty("eIds")
    private List<Long> eIds;
    @JsonProperty("cIds")
    private List<Long> cIds;
}








