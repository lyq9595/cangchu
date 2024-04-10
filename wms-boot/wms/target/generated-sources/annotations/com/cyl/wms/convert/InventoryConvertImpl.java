package com.cyl.wms.convert;

import com.cyl.wms.domain.Inventory;
import com.cyl.wms.domain.InventoryHistory;
import com.cyl.wms.pojo.dto.InventoryDTO;
import com.cyl.wms.pojo.vo.InventoryVO;
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
public class InventoryConvertImpl implements InventoryConvert {

    @Override
    public InventoryDTO do2dto(Inventory source) {
        if ( source == null ) {
            return null;
        }

        InventoryDTO inventoryDTO = new InventoryDTO();

        inventoryDTO.setCreateBy( source.getCreateBy() );
        inventoryDTO.setCreateTime( source.getCreateTime() );
        inventoryDTO.setUpdateBy( source.getUpdateBy() );
        inventoryDTO.setUpdateTime( source.getUpdateTime() );
        inventoryDTO.setId( source.getId() );
        inventoryDTO.setItemId( source.getItemId() );
        inventoryDTO.setWarehouseId( source.getWarehouseId() );
        inventoryDTO.setAreaId( source.getAreaId() );
        inventoryDTO.setRackId( source.getRackId() );
        inventoryDTO.setQuantity( source.getQuantity() );
        inventoryDTO.setRemark( source.getRemark() );

        return inventoryDTO;
    }

    @Override
    public Inventory dto2do(InventoryDTO source) {
        if ( source == null ) {
            return null;
        }

        Inventory inventory = new Inventory();

        inventory.setCreateBy( source.getCreateBy() );
        inventory.setCreateTime( source.getCreateTime() );
        inventory.setUpdateBy( source.getUpdateBy() );
        inventory.setUpdateTime( source.getUpdateTime() );
        inventory.setId( source.getId() );
        inventory.setItemId( source.getItemId() );
        inventory.setWarehouseId( source.getWarehouseId() );
        inventory.setAreaId( source.getAreaId() );
        inventory.setRackId( source.getRackId() );
        inventory.setQuantity( source.getQuantity() );
        inventory.setRemark( source.getRemark() );

        return inventory;
    }

    @Override
    public List<InventoryVO> dos2vos(List<Inventory> list) {
        if ( list == null ) {
            return null;
        }

        List<InventoryVO> list1 = new ArrayList<InventoryVO>( list.size() );
        for ( Inventory inventory : list ) {
            list1.add( inventoryToInventoryVO( inventory ) );
        }

        return list1;
    }

    @Override
    public Inventory inventoryHistory2invertory(InventoryHistory it) {
        if ( it == null ) {
            return null;
        }

        Inventory inventory = new Inventory();

        inventory.setCreateBy( it.getCreateBy() );
        inventory.setCreateTime( it.getCreateTime() );
        inventory.setUpdateBy( it.getUpdateBy() );
        inventory.setUpdateTime( it.getUpdateTime() );
        inventory.setId( it.getId() );
        inventory.setItemId( it.getItemId() );
        inventory.setWarehouseId( it.getWarehouseId() );
        inventory.setAreaId( it.getAreaId() );
        inventory.setRackId( it.getRackId() );
        inventory.setQuantity( it.getQuantity() );
        inventory.setRemark( it.getRemark() );
        inventory.setDelFlag( it.getDelFlag() );

        return inventory;
    }

    protected InventoryVO inventoryToInventoryVO(Inventory inventory) {
        if ( inventory == null ) {
            return null;
        }

        InventoryVO inventoryVO = new InventoryVO();

        inventoryVO.setCreateBy( inventory.getCreateBy() );
        inventoryVO.setCreateTime( inventory.getCreateTime() );
        inventoryVO.setUpdateBy( inventory.getUpdateBy() );
        inventoryVO.setUpdateTime( inventory.getUpdateTime() );
        inventoryVO.setId( inventory.getId() );
        inventoryVO.setItemId( inventory.getItemId() );
        inventoryVO.setRackId( inventory.getRackId() );
        inventoryVO.setWarehouseId( inventory.getWarehouseId() );
        inventoryVO.setAreaId( inventory.getAreaId() );
        inventoryVO.setQuantity( inventory.getQuantity() );
        inventoryVO.setRemark( inventory.getRemark() );

        return inventoryVO;
    }
}
