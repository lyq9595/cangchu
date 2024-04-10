package com.cyl.wms.convert;

import com.cyl.wms.domain.ReceiptOrder;
import com.cyl.wms.pojo.dto.ReceiptOrderDTO;
import com.cyl.wms.pojo.vo.ReceiptOrderVO;
import com.cyl.wms.pojo.vo.form.ReceiptOrderForm;
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
public class ReceiptOrderConvertImpl implements ReceiptOrderConvert {

    @Override
    public ReceiptOrderDTO do2dto(ReceiptOrder source) {
        if ( source == null ) {
            return null;
        }

        ReceiptOrderDTO receiptOrderDTO = new ReceiptOrderDTO();

        receiptOrderDTO.setCreateBy( source.getCreateBy() );
        receiptOrderDTO.setCreateTime( source.getCreateTime() );
        receiptOrderDTO.setUpdateBy( source.getUpdateBy() );
        receiptOrderDTO.setUpdateTime( source.getUpdateTime() );
        receiptOrderDTO.setId( source.getId() );
        receiptOrderDTO.setReceiptOrderNo( source.getReceiptOrderNo() );
        receiptOrderDTO.setReceiptOrderType( source.getReceiptOrderType() );
        receiptOrderDTO.setSupplierId( source.getSupplierId() );
        receiptOrderDTO.setOrderNo( source.getOrderNo() );
        receiptOrderDTO.setReceiptOrderStatus( source.getReceiptOrderStatus() );
        receiptOrderDTO.setRemark( source.getRemark() );

        return receiptOrderDTO;
    }

    @Override
    public ReceiptOrder dto2do(ReceiptOrderDTO source) {
        if ( source == null ) {
            return null;
        }

        ReceiptOrder receiptOrder = new ReceiptOrder();

        receiptOrder.setCreateBy( source.getCreateBy() );
        receiptOrder.setCreateTime( source.getCreateTime() );
        receiptOrder.setUpdateBy( source.getUpdateBy() );
        receiptOrder.setUpdateTime( source.getUpdateTime() );
        receiptOrder.setId( source.getId() );
        receiptOrder.setReceiptOrderNo( source.getReceiptOrderNo() );
        receiptOrder.setReceiptOrderType( source.getReceiptOrderType() );
        receiptOrder.setSupplierId( source.getSupplierId() );
        receiptOrder.setOrderNo( source.getOrderNo() );
        receiptOrder.setReceiptOrderStatus( source.getReceiptOrderStatus() );
        receiptOrder.setRemark( source.getRemark() );

        return receiptOrder;
    }

    @Override
    public List<ReceiptOrderVO> dos2vos(List<ReceiptOrder> list) {
        if ( list == null ) {
            return null;
        }

        List<ReceiptOrderVO> list1 = new ArrayList<ReceiptOrderVO>( list.size() );
        for ( ReceiptOrder receiptOrder : list ) {
            list1.add( receiptOrderToReceiptOrderVO( receiptOrder ) );
        }

        return list1;
    }

    @Override
    public ReceiptOrderForm do2form(ReceiptOrder bean) {
        if ( bean == null ) {
            return null;
        }

        ReceiptOrderForm receiptOrderForm = new ReceiptOrderForm();

        receiptOrderForm.setCreateBy( bean.getCreateBy() );
        receiptOrderForm.setCreateTime( bean.getCreateTime() );
        receiptOrderForm.setUpdateBy( bean.getUpdateBy() );
        receiptOrderForm.setUpdateTime( bean.getUpdateTime() );
        receiptOrderForm.setId( bean.getId() );
        receiptOrderForm.setReceiptOrderNo( bean.getReceiptOrderNo() );
        receiptOrderForm.setReceiptOrderType( bean.getReceiptOrderType() );
        receiptOrderForm.setSupplierId( bean.getSupplierId() );
        receiptOrderForm.setOrderNo( bean.getOrderNo() );
        receiptOrderForm.setReceiptOrderStatus( bean.getReceiptOrderStatus() );
        receiptOrderForm.setRemark( bean.getRemark() );
        receiptOrderForm.setDelFlag( bean.getDelFlag() );

        return receiptOrderForm;
    }

    protected ReceiptOrderVO receiptOrderToReceiptOrderVO(ReceiptOrder receiptOrder) {
        if ( receiptOrder == null ) {
            return null;
        }

        ReceiptOrderVO receiptOrderVO = new ReceiptOrderVO();

        receiptOrderVO.setCreateBy( receiptOrder.getCreateBy() );
        receiptOrderVO.setCreateTime( receiptOrder.getCreateTime() );
        receiptOrderVO.setUpdateBy( receiptOrder.getUpdateBy() );
        receiptOrderVO.setUpdateTime( receiptOrder.getUpdateTime() );
        receiptOrderVO.setId( receiptOrder.getId() );
        receiptOrderVO.setReceiptOrderNo( receiptOrder.getReceiptOrderNo() );
        receiptOrderVO.setReceiptOrderType( receiptOrder.getReceiptOrderType() );
        receiptOrderVO.setSupplierId( receiptOrder.getSupplierId() );
        receiptOrderVO.setOrderNo( receiptOrder.getOrderNo() );
        receiptOrderVO.setReceiptOrderStatus( receiptOrder.getReceiptOrderStatus() );
        receiptOrderVO.setRemark( receiptOrder.getRemark() );

        return receiptOrderVO;
    }
}
