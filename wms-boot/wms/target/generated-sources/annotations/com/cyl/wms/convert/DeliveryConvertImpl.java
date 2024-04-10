package com.cyl.wms.convert;

import com.cyl.wms.domain.Delivery;
import com.cyl.wms.pojo.dto.DeliveryDTO;
import com.cyl.wms.pojo.vo.DeliveryVO;
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
public class DeliveryConvertImpl implements DeliveryConvert {

    @Override
    public DeliveryDTO do2dto(Delivery source) {
        if ( source == null ) {
            return null;
        }

        DeliveryDTO deliveryDTO = new DeliveryDTO();

        deliveryDTO.setCreateBy( source.getCreateBy() );
        deliveryDTO.setCreateTime( source.getCreateTime() );
        deliveryDTO.setUpdateBy( source.getUpdateBy() );
        deliveryDTO.setUpdateTime( source.getUpdateTime() );
        deliveryDTO.setId( source.getId() );
        deliveryDTO.setShipmentOrderId( source.getShipmentOrderId() );
        deliveryDTO.setCarrierId( source.getCarrierId() );
        deliveryDTO.setDeliveryDate( source.getDeliveryDate() );
        deliveryDTO.setTrackingNo( source.getTrackingNo() );
        deliveryDTO.setRemark( source.getRemark() );

        return deliveryDTO;
    }

    @Override
    public Delivery dto2do(DeliveryDTO source) {
        if ( source == null ) {
            return null;
        }

        Delivery delivery = new Delivery();

        delivery.setCreateBy( source.getCreateBy() );
        delivery.setCreateTime( source.getCreateTime() );
        delivery.setUpdateBy( source.getUpdateBy() );
        delivery.setUpdateTime( source.getUpdateTime() );
        delivery.setId( source.getId() );
        delivery.setShipmentOrderId( source.getShipmentOrderId() );
        delivery.setCarrierId( source.getCarrierId() );
        delivery.setDeliveryDate( source.getDeliveryDate() );
        delivery.setTrackingNo( source.getTrackingNo() );
        delivery.setRemark( source.getRemark() );

        return delivery;
    }

    @Override
    public List<DeliveryVO> dos2vos(List<Delivery> list) {
        if ( list == null ) {
            return null;
        }

        List<DeliveryVO> list1 = new ArrayList<DeliveryVO>( list.size() );
        for ( Delivery delivery : list ) {
            list1.add( deliveryToDeliveryVO( delivery ) );
        }

        return list1;
    }

    protected DeliveryVO deliveryToDeliveryVO(Delivery delivery) {
        if ( delivery == null ) {
            return null;
        }

        DeliveryVO deliveryVO = new DeliveryVO();

        deliveryVO.setCreateBy( delivery.getCreateBy() );
        deliveryVO.setCreateTime( delivery.getCreateTime() );
        deliveryVO.setUpdateBy( delivery.getUpdateBy() );
        deliveryVO.setUpdateTime( delivery.getUpdateTime() );
        deliveryVO.setId( delivery.getId() );
        deliveryVO.setShipmentOrderId( delivery.getShipmentOrderId() );
        deliveryVO.setCarrierId( delivery.getCarrierId() );
        deliveryVO.setDeliveryDate( delivery.getDeliveryDate() );
        deliveryVO.setTrackingNo( delivery.getTrackingNo() );
        deliveryVO.setRemark( delivery.getRemark() );

        return deliveryVO;
    }
}
