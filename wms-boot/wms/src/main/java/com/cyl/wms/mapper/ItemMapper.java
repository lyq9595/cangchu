package com.cyl.wms.mapper;

import java.util.List;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.cyl.wms.domain.Item;
import org.apache.ibatis.annotations.Param;

/**
 * 物料Mapper接口
 *
 */
public interface ItemMapper extends BaseMapper<Item> {
    /**
     * 查询物料列表
     *
     * @param item 物料
     * @return 物料集合
     */
    List<Item> selectByEntity(Item item);

    /**
     * 批量软删除
     * @param ids
     * @return
    */
    int updateDelFlagByIds(@Param("ids") Long[] ids);
}
