package com.cyl.wms.mapper;

import java.util.List;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.cyl.wms.domain.Delivery;
import org.apache.ibatis.annotations.Param;

/**
 * 发货记录Mapper接口
 *
 */
public interface DeliveryMapper extends BaseMapper<Delivery> {
    /**
     * 查询发货记录列表
     *
     * @param delivery 发货记录
     * @return 发货记录集合
     */
    List<Delivery> selectByEntity(Delivery delivery);

    /**
     * 批量软删除
     * @param ids
     * @return
    */
    int updateDelFlagByIds(@Param("ids") Long[] ids);
}
