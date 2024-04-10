package com.cyl.wms.convert;

import com.cyl.wms.domain.InventoryHistory;
import com.cyl.wms.domain.ReceiptOrderDetail;
import com.cyl.wms.pojo.dto.ReceiptOrderDetailDTO;
import com.cyl.wms.pojo.vo.ReceiptOrderDetailVO;
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
public class ReceiptOrderDetailConvertImpl implements ReceiptOrderDetailConvert {

    @Override
    public ReceiptOrderDetailDTO do2dto(ReceiptOrderDetail source) {
        if ( source == null ) {
            return null;
        }

        ReceiptOrderDetailDTO receiptOrderDetailDTO = new ReceiptOrderDetailDTO();

        receiptOrderDetailDTO.setCreateBy( source.getCreateBy() );
        receiptOrderDetailDTO.setCreateTime( source.getCreateTime() );
        receiptOrderDetailDTO.setUpdateBy( source.getUpdateBy() );
        receiptOrderDetailDTO.setUpdateTime( source.getUpdateTime() );
        receiptOrderDetailDTO.setId( source.getId() );
        receiptOrderDetailDTO.setReceiptOrderId( source.getReceiptOrderId() );
        receiptOrderDetailDTO.setItemId( source.getItemId() );
        receiptOrderDetailDTO.setPlanQuantity( source.getPlanQuantity() );
        receiptOrderDetailDTO.setRealQuantity( source.getRealQuantity() );
        receiptOrderDetailDTO.setRackId( source.getRackId() );
        receiptOrderDetailDTO.setRemark( source.getRemark() );
        receiptOrderDetailDTO.setWarehouseId( source.getWarehouseId() );
        receiptOrderDetailDTO.setAreaId( source.getAreaId() );
        receiptOrderDetailDTO.setReceiptOrderStatus( source.getReceiptOrderStatus() );
        receiptOrderDetailDTO.setTotalMoney( source.getTotalMoney() );

        return receiptOrderDetailDTO;
    }

    @Override
    public ReceiptOrderDetail dto2do(ReceiptOrderDetailDTO source) {
        if ( source == null ) {
            return null;
        }

        ReceiptOrderDetail receiptOrderDetail = new ReceiptOrderDetail();

        receiptOrderDetail.setCreateBy( source.getCreateBy() );
        receiptOrderDetail.setCreateTime( source.getCreateTime() );
        receiptOrderDetail.setUpdateBy( source.getUpdateBy() );
        receiptOrderDetail.setUpdateTime( source.getUpdateTime() );
        receiptOrderDetail.setId( source.getId() );
        receiptOrderDetail.setReceiptOrderId( source.getReceiptOrderId() );
        receiptOrderDetail.setItemId( source.getItemId() );
        receiptOrderDetail.setPlanQuantity( source.getPlanQuantity() );
        receiptOrderDetail.setRealQuantity( source.getRealQuantity() );
        receiptOrderDetail.setRackId( source.getRackId() );
        receiptOrderDetail.setRemark( source.getRemark() );
        receiptOrderDetail.setWarehouseId( source.getWarehouseId() );
        receiptOrderDetail.setAreaId( source.getAreaId() );
        receiptOrderDetail.setReceiptOrderStatus( source.getReceiptOrderStatus() );
        receiptOrderDetail.setTotalMoney( source.getTotalMoney() );

        return receiptOrderDetail;
    }

    @Override
    public ReceiptOrderDetailVO toVo(ReceiptOrderDetail source) {
        if ( source == null ) {
            return null;
        }

        ReceiptOrderDetailVO receiptOrderDetailVO = new ReceiptOrderDetailVO();

        receiptOrderDetailVO.setCreateBy( source.getCreateBy() );
        receiptOrderDetailVO.setCreateTime( source.getCreateTime() );
        receiptOrderDetailVO.setUpdateBy( source.getUpdateBy() );
        receiptOrderDetailVO.setUpdateTime( source.getUpdateTime() );
        receiptOrderDetailVO.setId( source.getId() );
        receiptOrderDetailVO.setReceiptOrderId( source.getReceiptOrderId() );
        receiptOrderDetailVO.setItemId( source.getItemId() );
        receiptOrderDetailVO.setPlanQuantity( source.getPlanQuantity() );
        receiptOrderDetailVO.setRealQuantity( source.getRealQuantity() );
        receiptOrderDetailVO.setRackId( source.getRackId() );
        receiptOrderDetailVO.setRemark( source.getRemark() );
        receiptOrderDetailVO.setWarehouseId( source.getWarehouseId() );
        receiptOrderDetailVO.setAreaId( source.getAreaId() );
        receiptOrderDetailVO.setReceiptOrderStatus( source.getReceiptOrderStatus() );
        receiptOrderDetailVO.setDelFlag( source.getDelFlag() );
        receiptOrderDetailVO.setTotalMoney( source.getTotalMoney() );

        return receiptOrderDetailVO;
    }

    @Override
    public List<ReceiptOrderDetailVO> dos2vos(List<ReceiptOrderDetail> list) {
        if ( list == null ) {
            return null;
        }

        List<ReceiptOrderDetailVO> list1 = new ArrayList<ReceiptOrderDetailVO>( list.size() );
        for ( ReceiptOrderDetail receiptOrderDetail : list ) {
            list1.add( toVo( receiptOrderDetail ) );
        }

        return list1;
    }

    @Override
    public List<ReceiptOrderDetail> vos2dos(List<ReceiptOrderDetailVO> details) {
        if ( details == null ) {
            return null;
        }

        List<ReceiptOrderDetail> list = new ArrayList<ReceiptOrderDetail>( details.size() );
        for ( ReceiptOrderDetailVO receiptOrderDetailVO : details ) {
            list.add( receiptOrderDetailVOToReceiptOrderDetail( receiptOrderDetailVO ) );
        }

        return list;
    }

    @Override
    public InventoryHistory do2InventoryHistory(ReceiptOrderDetailVO it) {
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
        inventoryHistory.setWarehouseId( it.getWarehouseId() );
        inventoryHistory.setAreaId( it.getAreaId() );
        inventoryHistory.setRackId( it.getRackId() );
        inventoryHistory.setRemark( it.getRemark() );
        inventoryHistory.setDelFlag( it.getDelFlag() );

        return inventoryHistory;
    }

    protected ReceiptOrderDetail receiptOrderDetailVOToReceiptOrderDetail(ReceiptOrderDetailVO receiptOrderDetailVO) {
        if ( receiptOrderDetailVO == null ) {
            return null;
        }

        ReceiptOrderDetail receiptOrderDetail = new ReceiptOrderDetail();

        receiptOrderDetail.setCreateBy( receiptOrderDetailVO.getCreateBy() );
        receiptOrderDetail.setCreateTime( receiptOrderDetailVO.getCreateTime() );
        receiptOrderDetail.setUpdateBy( receiptOrderDetailVO.getUpdateBy() );
        receiptOrderDetail.setUpdateTime( receiptOrderDetailVO.getUpdateTime() );
        receiptOrderDetail.setId( receiptOrderDetailVO.getId() );
        receiptOrderDetail.setReceiptOrderId( receiptOrderDetailVO.getReceiptOrderId() );
        receiptOrderDetail.setItemId( receiptOrderDetailVO.getItemId() );
        receiptOrderDetail.setPlanQuantity( receiptOrderDetailVO.getPlanQuantity() );
        receiptOrderDetail.setRealQuantity( receiptOrderDetailVO.getRealQuantity() );
        receiptOrderDetail.setRackId( receiptOrderDetailVO.getRackId() );
        receiptOrderDetail.setDelFlag( receiptOrderDetailVO.getDelFlag() );
        receiptOrderDetail.setRemark( receiptOrderDetailVO.getRemark() );
        receiptOrderDetail.setWarehouseId( receiptOrderDetailVO.getWarehouseId() );
        receiptOrderDetail.setAreaId( receiptOrderDetailVO.getAreaId() );
        receiptOrderDetail.setReceiptOrderStatus( receiptOrderDetailVO.getReceiptOrderStatus() );
        receiptOrderDetail.setTotalMoney( receiptOrderDetailVO.getTotalMoney() );

        return receiptOrderDetail;
    }
}
