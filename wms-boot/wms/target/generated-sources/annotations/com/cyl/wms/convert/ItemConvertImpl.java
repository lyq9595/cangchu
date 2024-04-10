package com.cyl.wms.convert;

import com.cyl.wms.domain.Item;
import com.cyl.wms.pojo.dto.ItemDTO;
import com.cyl.wms.pojo.vo.ItemVO;
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
public class ItemConvertImpl implements ItemConvert {

    @Override
    public ItemDTO do2dto(Item source) {
        if ( source == null ) {
            return null;
        }

        ItemDTO itemDTO = new ItemDTO();

        itemDTO.setCreateBy( source.getCreateBy() );
        itemDTO.setCreateTime( source.getCreateTime() );
        itemDTO.setUpdateBy( source.getUpdateBy() );
        itemDTO.setUpdateTime( source.getUpdateTime() );
        itemDTO.setId( source.getId() );
        itemDTO.setItemNo( source.getItemNo() );
        itemDTO.setItemName( source.getItemName() );
        itemDTO.setItemType( source.getItemType() );
        itemDTO.setUnit( source.getUnit() );
        itemDTO.setRackId( source.getRackId() );
        itemDTO.setAreaId( source.getAreaId() );
        itemDTO.setWarehouseId( source.getWarehouseId() );
        itemDTO.setQuantity( source.getQuantity() );
        itemDTO.setExpiryDate( source.getExpiryDate() );
        itemDTO.setRemark( source.getRemark() );

        return itemDTO;
    }

    @Override
    public Item dto2do(ItemDTO source) {
        if ( source == null ) {
            return null;
        }

        Item item = new Item();

        item.setCreateBy( source.getCreateBy() );
        item.setCreateTime( source.getCreateTime() );
        item.setUpdateBy( source.getUpdateBy() );
        item.setUpdateTime( source.getUpdateTime() );
        item.setId( source.getId() );
        item.setItemNo( source.getItemNo() );
        item.setItemName( source.getItemName() );
        item.setItemType( source.getItemType() );
        item.setUnit( source.getUnit() );
        item.setRackId( source.getRackId() );
        item.setAreaId( source.getAreaId() );
        item.setWarehouseId( source.getWarehouseId() );
        item.setQuantity( source.getQuantity() );
        item.setExpiryDate( source.getExpiryDate() );
        item.setRemark( source.getRemark() );

        return item;
    }

    @Override
    public ItemVO toVo(Item source) {
        if ( source == null ) {
            return null;
        }

        ItemVO itemVO = new ItemVO();

        itemVO.setCreateBy( source.getCreateBy() );
        itemVO.setCreateTime( source.getCreateTime() );
        itemVO.setUpdateBy( source.getUpdateBy() );
        itemVO.setUpdateTime( source.getUpdateTime() );
        itemVO.setId( source.getId() );
        itemVO.setItemNo( source.getItemNo() );
        itemVO.setItemName( source.getItemName() );
        itemVO.setItemType( source.getItemType() );
        itemVO.setUnit( source.getUnit() );
        itemVO.setRackId( source.getRackId() );
        itemVO.setAreaId( source.getAreaId() );
        itemVO.setWarehouseId( source.getWarehouseId() );
        itemVO.setQuantity( source.getQuantity() );
        itemVO.setExpiryDate( source.getExpiryDate() );
        itemVO.setRemark( source.getRemark() );
        itemVO.setDelFlag( source.getDelFlag() );

        return itemVO;
    }

    @Override
    public List<ItemVO> dos2vos(List<Item> list) {
        if ( list == null ) {
            return null;
        }

        List<ItemVO> list1 = new ArrayList<ItemVO>( list.size() );
        for ( Item item : list ) {
            list1.add( toVo( item ) );
        }

        return list1;
    }
}
