package com.cyl.wms.convert;

import com.cyl.wms.domain.InventoryHistory;
import com.cyl.wms.pojo.dto.InventoryHistoryDTO;
import com.cyl.wms.pojo.vo.InventoryHistoryVO;
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
public class InventoryHistoryConvertImpl implements InventoryHistoryConvert {

    @Override
    public InventoryHistoryDTO do2dto(InventoryHistory source) {
        if ( source == null ) {
            return null;
        }

        InventoryHistoryDTO inventoryHistoryDTO = new InventoryHistoryDTO();

        inventoryHistoryDTO.setCreateBy( source.getCreateBy() );
        inventoryHistoryDTO.setCreateTime( source.getCreateTime() );
        inventoryHistoryDTO.setUpdateBy( source.getUpdateBy() );
        inventoryHistoryDTO.setUpdateTime( source.getUpdateTime() );
        inventoryHistoryDTO.setId( source.getId() );
        inventoryHistoryDTO.setFormId( source.getFormId() );
        inventoryHistoryDTO.setFormType( source.getFormType() );
        inventoryHistoryDTO.setItemId( source.getItemId() );
        inventoryHistoryDTO.setRackId( source.getRackId() );
        inventoryHistoryDTO.setWarehouseId( source.getWarehouseId() );
        inventoryHistoryDTO.setAreaId( source.getAreaId() );
        inventoryHistoryDTO.setQuantity( source.getQuantity() );
        inventoryHistoryDTO.setRemark( source.getRemark() );

        return inventoryHistoryDTO;
    }

    @Override
    public InventoryHistory dto2do(InventoryHistoryDTO source) {
        if ( source == null ) {
            return null;
        }

        InventoryHistory inventoryHistory = new InventoryHistory();

        inventoryHistory.setCreateBy( source.getCreateBy() );
        inventoryHistory.setCreateTime( source.getCreateTime() );
        inventoryHistory.setUpdateBy( source.getUpdateBy() );
        inventoryHistory.setUpdateTime( source.getUpdateTime() );
        inventoryHistory.setId( source.getId() );
        inventoryHistory.setFormId( source.getFormId() );
        inventoryHistory.setFormType( source.getFormType() );
        inventoryHistory.setItemId( source.getItemId() );
        inventoryHistory.setWarehouseId( source.getWarehouseId() );
        inventoryHistory.setAreaId( source.getAreaId() );
        inventoryHistory.setRackId( source.getRackId() );
        inventoryHistory.setQuantity( source.getQuantity() );
        inventoryHistory.setRemark( source.getRemark() );

        return inventoryHistory;
    }

    @Override
    public List<InventoryHistoryVO> dos2vos(List<InventoryHistory> list) {
        if ( list == null ) {
            return null;
        }

        List<InventoryHistoryVO> list1 = new ArrayList<InventoryHistoryVO>( list.size() );
        for ( InventoryHistory inventoryHistory : list ) {
            list1.add( inventoryHistoryToInventoryHistoryVO( inventoryHistory ) );
        }

        return list1;
    }

    protected InventoryHistoryVO inventoryHistoryToInventoryHistoryVO(InventoryHistory inventoryHistory) {
        if ( inventoryHistory == null ) {
            return null;
        }

        InventoryHistoryVO inventoryHistoryVO = new InventoryHistoryVO();

        inventoryHistoryVO.setCreateBy( inventoryHistory.getCreateBy() );
        inventoryHistoryVO.setCreateTime( inventoryHistory.getCreateTime() );
        inventoryHistoryVO.setUpdateBy( inventoryHistory.getUpdateBy() );
        inventoryHistoryVO.setUpdateTime( inventoryHistory.getUpdateTime() );
        inventoryHistoryVO.setId( inventoryHistory.getId() );
        inventoryHistoryVO.setFormId( inventoryHistory.getFormId() );
        inventoryHistoryVO.setFormType( inventoryHistory.getFormType() );
        inventoryHistoryVO.setItemId( inventoryHistory.getItemId() );
        inventoryHistoryVO.setRackId( inventoryHistory.getRackId() );
        inventoryHistoryVO.setWarehouseId( inventoryHistory.getWarehouseId() );
        inventoryHistoryVO.setAreaId( inventoryHistory.getAreaId() );
        inventoryHistoryVO.setQuantity( inventoryHistory.getQuantity() );
        inventoryHistoryVO.setRemark( inventoryHistory.getRemark() );

        return inventoryHistoryVO;
    }
}
