package com.cyl.wms.convert;

import com.cyl.wms.domain.InventoryHistory;
import com.cyl.wms.domain.InventoryMovementDetail;
import com.cyl.wms.pojo.dto.InventoryMovementDetailDTO;
import com.cyl.wms.pojo.vo.InventoryMovementDetailVO;
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
public class InventoryMovementDetailConvertImpl implements InventoryMovementDetailConvert {

    @Override
    public InventoryMovementDetailDTO do2dto(InventoryMovementDetail source) {
        if ( source == null ) {
            return null;
        }

        InventoryMovementDetailDTO inventoryMovementDetailDTO = new InventoryMovementDetailDTO();

        inventoryMovementDetailDTO.setCreateBy( source.getCreateBy() );
        inventoryMovementDetailDTO.setCreateTime( source.getCreateTime() );
        inventoryMovementDetailDTO.setUpdateBy( source.getUpdateBy() );
        inventoryMovementDetailDTO.setUpdateTime( source.getUpdateTime() );
        inventoryMovementDetailDTO.setId( source.getId() );
        inventoryMovementDetailDTO.setInventoryMovementId( source.getInventoryMovementId() );
        inventoryMovementDetailDTO.setItemId( source.getItemId() );
        inventoryMovementDetailDTO.setPlanQuantity( source.getPlanQuantity() );
        inventoryMovementDetailDTO.setRealQuantity( source.getRealQuantity() );
        inventoryMovementDetailDTO.setRemark( source.getRemark() );
        inventoryMovementDetailDTO.setSourceRackId( source.getSourceRackId() );
        inventoryMovementDetailDTO.setSourceWarehouseId( source.getSourceWarehouseId() );
        inventoryMovementDetailDTO.setSourceAreaId( source.getSourceAreaId() );
        inventoryMovementDetailDTO.setMoveStatus( source.getMoveStatus() );
        inventoryMovementDetailDTO.setTargetRackId( source.getTargetRackId() );
        inventoryMovementDetailDTO.setTargetWarehouseId( source.getTargetWarehouseId() );
        inventoryMovementDetailDTO.setTargetAreaId( source.getTargetAreaId() );

        return inventoryMovementDetailDTO;
    }

    @Override
    public InventoryMovementDetail dto2do(InventoryMovementDetailDTO source) {
        if ( source == null ) {
            return null;
        }

        InventoryMovementDetail inventoryMovementDetail = new InventoryMovementDetail();

        inventoryMovementDetail.setCreateBy( source.getCreateBy() );
        inventoryMovementDetail.setCreateTime( source.getCreateTime() );
        inventoryMovementDetail.setUpdateBy( source.getUpdateBy() );
        inventoryMovementDetail.setUpdateTime( source.getUpdateTime() );
        inventoryMovementDetail.setId( source.getId() );
        inventoryMovementDetail.setInventoryMovementId( source.getInventoryMovementId() );
        inventoryMovementDetail.setItemId( source.getItemId() );
        inventoryMovementDetail.setPlanQuantity( source.getPlanQuantity() );
        inventoryMovementDetail.setRealQuantity( source.getRealQuantity() );
        inventoryMovementDetail.setRemark( source.getRemark() );
        inventoryMovementDetail.setSourceRackId( source.getSourceRackId() );
        inventoryMovementDetail.setSourceWarehouseId( source.getSourceWarehouseId() );
        inventoryMovementDetail.setSourceAreaId( source.getSourceAreaId() );
        inventoryMovementDetail.setMoveStatus( source.getMoveStatus() );
        inventoryMovementDetail.setTargetRackId( source.getTargetRackId() );
        inventoryMovementDetail.setTargetWarehouseId( source.getTargetWarehouseId() );
        inventoryMovementDetail.setTargetAreaId( source.getTargetAreaId() );

        return inventoryMovementDetail;
    }

    @Override
    public List<InventoryMovementDetailVO> dos2vos(List<InventoryMovementDetail> list) {
        if ( list == null ) {
            return null;
        }

        List<InventoryMovementDetailVO> list1 = new ArrayList<InventoryMovementDetailVO>( list.size() );
        for ( InventoryMovementDetail inventoryMovementDetail : list ) {
            list1.add( inventoryMovementDetailToInventoryMovementDetailVO( inventoryMovementDetail ) );
        }

        return list1;
    }

    @Override
    public List<InventoryMovementDetail> vos2dos(List<InventoryMovementDetailVO> details) {
        if ( details == null ) {
            return null;
        }

        List<InventoryMovementDetail> list = new ArrayList<InventoryMovementDetail>( details.size() );
        for ( InventoryMovementDetailVO inventoryMovementDetailVO : details ) {
            list.add( inventoryMovementDetailVOToInventoryMovementDetail( inventoryMovementDetailVO ) );
        }

        return list;
    }

    @Override
    public InventoryHistory do2InventoryHistory(InventoryMovementDetailVO it) {
        if ( it == null ) {
            return null;
        }

        InventoryHistory inventoryHistory = new InventoryHistory();

        inventoryHistory.setQuantity( it.getRealQuantity() );
        inventoryHistory.setCreateBy( it.getCreateBy() );
        inventoryHistory.setCreateTime( it.getCreateTime() );
        inventoryHistory.setUpdateBy( it.getUpdateBy() );
        inventoryHistory.setUpdateTime( it.getUpdateTime() );
        inventoryHistory.setId( it.getId() );
        inventoryHistory.setItemId( it.getItemId() );
        inventoryHistory.setRemark( it.getRemark() );
        inventoryHistory.setDelFlag( it.getDelFlag() );

        return inventoryHistory;
    }

    protected InventoryMovementDetailVO inventoryMovementDetailToInventoryMovementDetailVO(InventoryMovementDetail inventoryMovementDetail) {
        if ( inventoryMovementDetail == null ) {
            return null;
        }

        InventoryMovementDetailVO inventoryMovementDetailVO = new InventoryMovementDetailVO();

        inventoryMovementDetailVO.setCreateBy( inventoryMovementDetail.getCreateBy() );
        inventoryMovementDetailVO.setCreateTime( inventoryMovementDetail.getCreateTime() );
        inventoryMovementDetailVO.setUpdateBy( inventoryMovementDetail.getUpdateBy() );
        inventoryMovementDetailVO.setUpdateTime( inventoryMovementDetail.getUpdateTime() );
        inventoryMovementDetailVO.setId( inventoryMovementDetail.getId() );
        inventoryMovementDetailVO.setInventoryMovementId( inventoryMovementDetail.getInventoryMovementId() );
        inventoryMovementDetailVO.setItemId( inventoryMovementDetail.getItemId() );
        inventoryMovementDetailVO.setPlanQuantity( inventoryMovementDetail.getPlanQuantity() );
        inventoryMovementDetailVO.setRealQuantity( inventoryMovementDetail.getRealQuantity() );
        inventoryMovementDetailVO.setRemark( inventoryMovementDetail.getRemark() );
        inventoryMovementDetailVO.setSourceRackId( inventoryMovementDetail.getSourceRackId() );
        inventoryMovementDetailVO.setSourceWarehouseId( inventoryMovementDetail.getSourceWarehouseId() );
        inventoryMovementDetailVO.setSourceAreaId( inventoryMovementDetail.getSourceAreaId() );
        inventoryMovementDetailVO.setMoveStatus( inventoryMovementDetail.getMoveStatus() );
        inventoryMovementDetailVO.setTargetRackId( inventoryMovementDetail.getTargetRackId() );
        inventoryMovementDetailVO.setTargetWarehouseId( inventoryMovementDetail.getTargetWarehouseId() );
        inventoryMovementDetailVO.setTargetAreaId( inventoryMovementDetail.getTargetAreaId() );
        inventoryMovementDetailVO.setDelFlag( inventoryMovementDetail.getDelFlag() );

        return inventoryMovementDetailVO;
    }

    protected InventoryMovementDetail inventoryMovementDetailVOToInventoryMovementDetail(InventoryMovementDetailVO inventoryMovementDetailVO) {
        if ( inventoryMovementDetailVO == null ) {
            return null;
        }

        InventoryMovementDetail inventoryMovementDetail = new InventoryMovementDetail();

        inventoryMovementDetail.setCreateBy( inventoryMovementDetailVO.getCreateBy() );
        inventoryMovementDetail.setCreateTime( inventoryMovementDetailVO.getCreateTime() );
        inventoryMovementDetail.setUpdateBy( inventoryMovementDetailVO.getUpdateBy() );
        inventoryMovementDetail.setUpdateTime( inventoryMovementDetailVO.getUpdateTime() );
        inventoryMovementDetail.setId( inventoryMovementDetailVO.getId() );
        inventoryMovementDetail.setInventoryMovementId( inventoryMovementDetailVO.getInventoryMovementId() );
        inventoryMovementDetail.setItemId( inventoryMovementDetailVO.getItemId() );
        inventoryMovementDetail.setPlanQuantity( inventoryMovementDetailVO.getPlanQuantity() );
        inventoryMovementDetail.setRealQuantity( inventoryMovementDetailVO.getRealQuantity() );
        inventoryMovementDetail.setDelFlag( inventoryMovementDetailVO.getDelFlag() );
        inventoryMovementDetail.setRemark( inventoryMovementDetailVO.getRemark() );
        inventoryMovementDetail.setSourceRackId( inventoryMovementDetailVO.getSourceRackId() );
        inventoryMovementDetail.setSourceWarehouseId( inventoryMovementDetailVO.getSourceWarehouseId() );
        inventoryMovementDetail.setSourceAreaId( inventoryMovementDetailVO.getSourceAreaId() );
        inventoryMovementDetail.setMoveStatus( inventoryMovementDetailVO.getMoveStatus() );
        inventoryMovementDetail.setTargetRackId( inventoryMovementDetailVO.getTargetRackId() );
        inventoryMovementDetail.setTargetWarehouseId( inventoryMovementDetailVO.getTargetWarehouseId() );
        inventoryMovementDetail.setTargetAreaId( inventoryMovementDetailVO.getTargetAreaId() );

        return inventoryMovementDetail;
    }
}
