package com.cyl.wms.convert;

import com.cyl.wms.domain.Rack;
import com.cyl.wms.pojo.dto.RackDTO;
import com.cyl.wms.pojo.vo.RackVO;
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
public class RackConvertImpl implements RackConvert {

    @Override
    public RackDTO do2dto(Rack source) {
        if ( source == null ) {
            return null;
        }

        RackDTO rackDTO = new RackDTO();

        rackDTO.setCreateBy( source.getCreateBy() );
        rackDTO.setCreateTime( source.getCreateTime() );
        rackDTO.setUpdateBy( source.getUpdateBy() );
        rackDTO.setUpdateTime( source.getUpdateTime() );
        rackDTO.setId( source.getId() );
        rackDTO.setRackNo( source.getRackNo() );
        rackDTO.setRackName( source.getRackName() );
        rackDTO.setAreaId( source.getAreaId() );
        rackDTO.setWarehouseId( source.getWarehouseId() );
        rackDTO.setRemark( source.getRemark() );

        return rackDTO;
    }

    @Override
    public Rack dto2do(RackDTO source) {
        if ( source == null ) {
            return null;
        }

        Rack rack = new Rack();

        rack.setCreateBy( source.getCreateBy() );
        rack.setCreateTime( source.getCreateTime() );
        rack.setUpdateBy( source.getUpdateBy() );
        rack.setUpdateTime( source.getUpdateTime() );
        rack.setId( source.getId() );
        rack.setRackNo( source.getRackNo() );
        rack.setRackName( source.getRackName() );
        rack.setAreaId( source.getAreaId() );
        rack.setWarehouseId( source.getWarehouseId() );
        rack.setRemark( source.getRemark() );

        return rack;
    }

    @Override
    public List<RackVO> dos2vos(List<Rack> list) {
        if ( list == null ) {
            return null;
        }

        List<RackVO> list1 = new ArrayList<RackVO>( list.size() );
        for ( Rack rack : list ) {
            list1.add( rackToRackVO( rack ) );
        }

        return list1;
    }

    protected RackVO rackToRackVO(Rack rack) {
        if ( rack == null ) {
            return null;
        }

        RackVO rackVO = new RackVO();

        rackVO.setCreateBy( rack.getCreateBy() );
        rackVO.setCreateTime( rack.getCreateTime() );
        rackVO.setUpdateBy( rack.getUpdateBy() );
        rackVO.setUpdateTime( rack.getUpdateTime() );
        rackVO.setId( rack.getId() );
        rackVO.setRackNo( rack.getRackNo() );
        rackVO.setRackName( rack.getRackName() );
        rackVO.setAreaId( rack.getAreaId() );
        rackVO.setWarehouseId( rack.getWarehouseId() );
        rackVO.setRemark( rack.getRemark() );

        return rackVO;
    }
}
