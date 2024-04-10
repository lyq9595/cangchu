package com.cyl.wms.mapper;

import java.util.List;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.cyl.wms.domain.Rack;
import org.apache.ibatis.annotations.Param;

/**
 * 货架Mapper接口
 *
 */
public interface RackMapper extends BaseMapper<Rack> {
    /**
     * 查询货架列表
     *
     * @param rack 货架
     * @return 货架集合
     */
    List<Rack> selectByEntity(Rack rack);

    /**
     * 批量软删除
     * @param ids
     * @return
    */
    int updateDelFlagByIds(@Param("ids") Long[] ids);
}
