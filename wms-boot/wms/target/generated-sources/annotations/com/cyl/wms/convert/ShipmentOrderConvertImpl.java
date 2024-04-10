package com.cyl.wms.convert;

import com.cyl.wms.domain.ShipmentOrder;
import com.cyl.wms.pojo.dto.ShipmentOrderDTO;
import com.cyl.wms.pojo.vo.ShipmentOrderVO;
import com.cyl.wms.pojo.vo.form.ShipmentOrderFrom;
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
public class ShipmentOrderConvertImpl implements ShipmentOrderConvert {

    @Override
    public ShipmentOrderDTO do2dto(ShipmentOrder source) {
        if ( source == null ) {
            return null;
        }

        ShipmentOrderDTO shipmentOrderDTO = new ShipmentOrderDTO();

        shipmentOrderDTO.setCreateBy( source.getCreateBy() );
        shipmentOrderDTO.setCreateTime( source.getCreateTime() );
        shipmentOrderDTO.setUpdateBy( source.getUpdateBy() );
        shipmentOrderDTO.setUpdateTime( source.getUpdateTime() );
        shipmentOrderDTO.setId( source.getId() );
        shipmentOrderDTO.setShipmentOrderNo( source.getShipmentOrderNo() );
        shipmentOrderDTO.setShipmentOrderType( source.getShipmentOrderType() );
        shipmentOrderDTO.setOrderNo( source.getOrderNo() );
        shipmentOrderDTO.setCustomerId( source.getCustomerId() );
        shipmentOrderDTO.setShipmentOrderStatus( source.getShipmentOrderStatus() );
        shipmentOrderDTO.setCheckStatus( source.getCheckStatus() );
        shipmentOrderDTO.setCheckUserId( source.getCheckUserId() );
        shipmentOrderDTO.setCheckTime( source.getCheckTime() );
        shipmentOrderDTO.setRemark( source.getRemark() );

        return shipmentOrderDTO;
    }

    @Override
    public ShipmentOrder dto2do(ShipmentOrderDTO source) {
        if ( source == null ) {
            return null;
        }

        ShipmentOrder shipmentOrder = new ShipmentOrder();

        shipmentOrder.setCreateBy( source.getCreateBy() );
        shipmentOrder.setCreateTime( source.getCreateTime() );
        shipmentOrder.setUpdateBy( source.getUpdateBy() );
        shipmentOrder.setUpdateTime( source.getUpdateTime() );
        shipmentOrder.setId( source.getId() );
        shipmentOrder.setShipmentOrderNo( source.getShipmentOrderNo() );
        shipmentOrder.setShipmentOrderType( source.getShipmentOrderType() );
        shipmentOrder.setOrderNo( source.getOrderNo() );
        shipmentOrder.setCustomerId( source.getCustomerId() );
        shipmentOrder.setShipmentOrderStatus( source.getShipmentOrderStatus() );
        shipmentOrder.setCheckStatus( source.getCheckStatus() );
        shipmentOrder.setCheckUserId( source.getCheckUserId() );
        shipmentOrder.setCheckTime( source.getCheckTime() );
        shipmentOrder.setRemark( source.getRemark() );

        return shipmentOrder;
    }

    @Override
    public List<ShipmentOrderVO> dos2vos(List<ShipmentOrder> list) {
        if ( list == null ) {
            return null;
        }

        List<ShipmentOrderVO> list1 = new ArrayList<ShipmentOrderVO>( list.size() );
        for ( ShipmentOrder shipmentOrder : list ) {
            list1.add( shipmentOrderToShipmentOrderVO( shipmentOrder ) );
        }

        return list1;
    }

    @Override
    public ShipmentOrderFrom do2form(ShipmentOrder bean) {
        if ( bean == null ) {
            return null;
        }

        ShipmentOrderFrom shipmentOrderFrom = new ShipmentOrderFrom();

        shipmentOrderFrom.setCreateBy( bean.getCreateBy() );
        shipmentOrderFrom.setCreateTime( bean.getCreateTime() );
        shipmentOrderFrom.setUpdateBy( bean.getUpdateBy() );
        shipmentOrderFrom.setUpdateTime( bean.getUpdateTime() );
        shipmentOrderFrom.setId( bean.getId() );
        shipmentOrderFrom.setShipmentOrderNo( bean.getShipmentOrderNo() );
        shipmentOrderFrom.setShipmentOrderType( bean.getShipmentOrderType() );
        shipmentOrderFrom.setOrderNo( bean.getOrderNo() );
        shipmentOrderFrom.setCustomerId( bean.getCustomerId() );
        shipmentOrderFrom.setShipmentOrderStatus( bean.getShipmentOrderStatus() );
        shipmentOrderFrom.setCheckStatus( bean.getCheckStatus() );
        shipmentOrderFrom.setCheckUserId( bean.getCheckUserId() );
        shipmentOrderFrom.setCheckTime( bean.getCheckTime() );
        shipmentOrderFrom.setRemark( bean.getRemark() );
        shipmentOrderFrom.setDelFlag( bean.getDelFlag() );

        return shipmentOrderFrom;
    }

    protected ShipmentOrderVO shipmentOrderToShipmentOrderVO(ShipmentOrder shipmentOrder) {
        if ( shipmentOrder == null ) {
            return null;
        }

        ShipmentOrderVO shipmentOrderVO = new ShipmentOrderVO();

        shipmentOrderVO.setCreateBy( shipmentOrder.getCreateBy() );
        shipmentOrderVO.setCreateTime( shipmentOrder.getCreateTime() );
        shipmentOrderVO.setUpdateBy( shipmentOrder.getUpdateBy() );
        shipmentOrderVO.setUpdateTime( shipmentOrder.getUpdateTime() );
        shipmentOrderVO.setId( shipmentOrder.getId() );
        shipmentOrderVO.setShipmentOrderNo( shipmentOrder.getShipmentOrderNo() );
        shipmentOrderVO.setShipmentOrderType( shipmentOrder.getShipmentOrderType() );
        shipmentOrderVO.setOrderNo( shipmentOrder.getOrderNo() );
        shipmentOrderVO.setCustomerId( shipmentOrder.getCustomerId() );
        shipmentOrderVO.setShipmentOrderStatus( shipmentOrder.getShipmentOrderStatus() );
        shipmentOrderVO.setCheckStatus( shipmentOrder.getCheckStatus() );
        shipmentOrderVO.setCheckUserId( shipmentOrder.getCheckUserId() );
        shipmentOrderVO.setCheckTime( shipmentOrder.getCheckTime() );
        shipmentOrderVO.setRemark( shipmentOrder.getRemark() );

        return shipmentOrderVO;
    }
}
