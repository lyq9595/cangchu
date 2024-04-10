package com.cyl.wms.convert;

import com.cyl.wms.domain.InventoryMovement;
import com.cyl.wms.pojo.dto.InventoryMovementDTO;
import com.cyl.wms.pojo.vo.InventoryMovementVO;
import com.cyl.wms.pojo.vo.form.InventoryMovementFrom;
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
public class InventoryMovementConvertImpl implements InventoryMovementConvert {

    @Override
    public InventoryMovementDTO do2dto(InventoryMovement source) {
        if ( source == null ) {
            return null;
        }

        InventoryMovementDTO inventoryMovementDTO = new InventoryMovementDTO();

        inventoryMovementDTO.setCreateBy( source.getCreateBy() );
        inventoryMovementDTO.setCreateTime( source.getCreateTime() );
        inventoryMovementDTO.setUpdateBy( source.getUpdateBy() );
        inventoryMovementDTO.setUpdateTime( source.getUpdateTime() );
        inventoryMovementDTO.setId( source.getId() );
        inventoryMovementDTO.setInventoryMovementNo( source.getInventoryMovementNo() );
        inventoryMovementDTO.setSourceRackId( source.getSourceRackId() );
        inventoryMovementDTO.setTargetRackId( source.getTargetRackId() );
        inventoryMovementDTO.setStatus( source.getStatus() );
        inventoryMovementDTO.setCheckStatus( source.getCheckStatus() );
        inventoryMovementDTO.setCheckUserId( source.getCheckUserId() );
        inventoryMovementDTO.setCheckTime( source.getCheckTime() );
        inventoryMovementDTO.setRemark( source.getRemark() );

        return inventoryMovementDTO;
    }

    @Override
    public InventoryMovement dto2do(InventoryMovementDTO source) {
        if ( source == null ) {
            return null;
        }

        InventoryMovement inventoryMovement = new InventoryMovement();

        inventoryMovement.setCreateBy( source.getCreateBy() );
        inventoryMovement.setCreateTime( source.getCreateTime() );
        inventoryMovement.setUpdateBy( source.getUpdateBy() );
        inventoryMovement.setUpdateTime( source.getUpdateTime() );
        inventoryMovement.setId( source.getId() );
        inventoryMovement.setInventoryMovementNo( source.getInventoryMovementNo() );
        inventoryMovement.setSourceRackId( source.getSourceRackId() );
        inventoryMovement.setTargetRackId( source.getTargetRackId() );
        inventoryMovement.setStatus( source.getStatus() );
        inventoryMovement.setCheckStatus( source.getCheckStatus() );
        inventoryMovement.setCheckUserId( source.getCheckUserId() );
        inventoryMovement.setCheckTime( source.getCheckTime() );
        inventoryMovement.setRemark( source.getRemark() );

        return inventoryMovement;
    }

    @Override
    public List<InventoryMovementVO> dos2vos(List<InventoryMovement> list) {
        if ( list == null ) {
            return null;
        }

        List<InventoryMovementVO> list1 = new ArrayList<InventoryMovementVO>( list.size() );
        for ( InventoryMovement inventoryMovement : list ) {
            list1.add( inventoryMovementToInventoryMovementVO( inventoryMovement ) );
        }

        return list1;
    }

    @Override
    public InventoryMovementFrom do2form(InventoryMovement order) {
        if ( order == null ) {
            return null;
        }

        InventoryMovementFrom inventoryMovementFrom = new InventoryMovementFrom();

        inventoryMovementFrom.setCreateBy( order.getCreateBy() );
        inventoryMovementFrom.setCreateTime( order.getCreateTime() );
        inventoryMovementFrom.setUpdateBy( order.getUpdateBy() );
        inventoryMovementFrom.setUpdateTime( order.getUpdateTime() );
        inventoryMovementFrom.setId( order.getId() );
        inventoryMovementFrom.setInventoryMovementNo( order.getInventoryMovementNo() );
        inventoryMovementFrom.setSourceRackId( order.getSourceRackId() );
        inventoryMovementFrom.setTargetRackId( order.getTargetRackId() );
        inventoryMovementFrom.setStatus( order.getStatus() );
        inventoryMovementFrom.setCheckStatus( order.getCheckStatus() );
        inventoryMovementFrom.setCheckUserId( order.getCheckUserId() );
        inventoryMovementFrom.setCheckTime( order.getCheckTime() );
        inventoryMovementFrom.setRemark( order.getRemark() );
        inventoryMovementFrom.setDelFlag( order.getDelFlag() );

        return inventoryMovementFrom;
    }

    protected InventoryMovementVO inventoryMovementToInventoryMovementVO(InventoryMovement inventoryMovement) {
        if ( inventoryMovement == null ) {
            return null;
        }

        InventoryMovementVO inventoryMovementVO = new InventoryMovementVO();

        inventoryMovementVO.setCreateBy( inventoryMovement.getCreateBy() );
        inventoryMovementVO.setCreateTime( inventoryMovement.getCreateTime() );
        inventoryMovementVO.setUpdateBy( inventoryMovement.getUpdateBy() );
        inventoryMovementVO.setUpdateTime( inventoryMovement.getUpdateTime() );
        inventoryMovementVO.setId( inventoryMovement.getId() );
        inventoryMovementVO.setInventoryMovementNo( inventoryMovement.getInventoryMovementNo() );
        inventoryMovementVO.setSourceRackId( inventoryMovement.getSourceRackId() );
        inventoryMovementVO.setTargetRackId( inventoryMovement.getTargetRackId() );
        inventoryMovementVO.setStatus( inventoryMovement.getStatus() );
        inventoryMovementVO.setCheckStatus( inventoryMovement.getCheckStatus() );
        inventoryMovementVO.setCheckUserId( inventoryMovement.getCheckUserId() );
        inventoryMovementVO.setCheckTime( inventoryMovement.getCheckTime() );
        inventoryMovementVO.setRemark( inventoryMovement.getRemark() );

        return inventoryMovementVO;
    }
}
