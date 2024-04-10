package com.cyl.wms.convert;

import com.cyl.wms.domain.Warehouse;
import com.cyl.wms.pojo.dto.WarehouseDTO;
import com.cyl.wms.pojo.vo.WarehouseVO;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2024-04-10T16:56:16+0800",
    comments = "version: 1.4.2.Final, compiler: javac, environment: Java 11.0.21 (Amazon.com Inc.)"
)
@Component
public class WarehouseConvertImpl implements WarehouseConvert {

    @Override
    public WarehouseDTO do2dto(Warehouse source) {
        if ( source == null ) {
            return null;
        }

        WarehouseDTO warehouseDTO = new WarehouseDTO();

        warehouseDTO.setCreateBy( source.getCreateBy() );
        warehouseDTO.setCreateTime( source.getCreateTime() );
        warehouseDTO.setUpdateBy( source.getUpdateBy() );
        warehouseDTO.setUpdateTime( source.getUpdateTime() );
        warehouseDTO.setId( source.getId() );
        warehouseDTO.setWarehouseNo( source.getWarehouseNo() );
        warehouseDTO.setWarehouseName( source.getWarehouseName() );
        warehouseDTO.setRemark( source.getRemark() );

        return warehouseDTO;
    }

    @Override
    public Warehouse dto2do(WarehouseDTO source) {
        if ( source == null ) {
            return null;
        }

        Warehouse warehouse = new Warehouse();

        warehouse.setCreateBy( source.getCreateBy() );
        warehouse.setCreateTime( source.getCreateTime() );
        warehouse.setUpdateBy( source.getUpdateBy() );
        warehouse.setUpdateTime( source.getUpdateTime() );
        warehouse.setId( source.getId() );
        warehouse.setWarehouseNo( source.getWarehouseNo() );
        warehouse.setWarehouseName( source.getWarehouseName() );
        warehouse.setRemark( source.getRemark() );

        return warehouse;
    }

    @Override
    public List<WarehouseVO> dos2vos(List<Warehouse> list) {
        if ( list == null ) {
            return null;
        }

        List<WarehouseVO> list1 = new ArrayList<WarehouseVO>( list.size() );
        for ( Warehouse warehouse : list ) {
            list1.add( warehouseToWarehouseVO( warehouse ) );
        }

        return list1;
    }

    protected WarehouseVO warehouseToWarehouseVO(Warehouse warehouse) {
        if ( warehouse == null ) {
            return null;
        }

        WarehouseVO warehouseVO = new WarehouseVO();

        warehouseVO.setCreateBy( warehouse.getCreateBy() );
        warehouseVO.setCreateTime( warehouse.getCreateTime() );
        warehouseVO.setUpdateBy( warehouse.getUpdateBy() );
        warehouseVO.setUpdateTime( warehouse.getUpdateTime() );
        warehouseVO.setId( warehouse.getId() );
        warehouseVO.setWarehouseNo( warehouse.getWarehouseNo() );
        warehouseVO.setWarehouseName( warehouse.getWarehouseName() );
        warehouseVO.setRemark( warehouse.getRemark() );

        return warehouseVO;
    }
}
