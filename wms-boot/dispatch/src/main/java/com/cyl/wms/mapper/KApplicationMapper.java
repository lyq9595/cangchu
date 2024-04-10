package com.cyl.wms.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.cyl.wms.domain.KApplication;
import org.apache.ibatis.annotations.Update;


public interface KApplicationMapper extends BaseMapper<KApplication> {


    @Update("update  k_application set current_status_code=current_status_code+1,is_reject=0  where application_id=#{applicationId}")
    int updateSubmit(Long applicationId);

    @Update("update  k_application set current_status_code=current_status_code-1,is_reject=1  where application_id=#{applicationId}")
    int rejectApplication(Long applicationId);
}
