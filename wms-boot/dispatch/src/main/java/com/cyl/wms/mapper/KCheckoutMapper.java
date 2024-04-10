package com.cyl.wms.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.cyl.wms.domain.KCheckout;
import org.apache.ibatis.annotations.Update;


/**
 * @description:
 * @author: li ying qi
 **/

public interface KCheckoutMapper extends BaseMapper<KCheckout> {
    @Update("update  k_checkout set check_status=1 where application_id=#{id}")
    void updateCheckoutStatus(Long id);
}
