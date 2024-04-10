package com.cyl.wms.mapper;

import java.util.List;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.cyl.wms.domain.Supplier;
import org.apache.ibatis.annotations.Param;

/**
 * 供应商Mapper接口
 *
 */
public interface SupplierMapper extends BaseMapper<Supplier> {
    /**
     * 查询供应商列表
     *
     * @param supplier 供应商
     * @return 供应商集合
     */
    List<Supplier> selectByEntity(Supplier supplier);

    /**
     * 批量软删除
     * @param ids
     * @return
    */
    int updateDelFlagByIds(@Param("ids") Long[] ids);
}
