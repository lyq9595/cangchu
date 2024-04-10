package com.cyl.wms.convert;

import com.cyl.wms.domain.Area;
import com.cyl.wms.pojo.dto.AreaDTO;
import com.cyl.wms.pojo.vo.AreaVO;
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
public class AreaConvertImpl implements AreaConvert {

    @Override
    public AreaDTO do2dto(Area source) {
        if ( source == null ) {
            return null;
        }

        AreaDTO areaDTO = new AreaDTO();

        areaDTO.setCreateBy( source.getCreateBy() );
        areaDTO.setCreateTime( source.getCreateTime() );
        areaDTO.setUpdateBy( source.getUpdateBy() );
        areaDTO.setUpdateTime( source.getUpdateTime() );
        areaDTO.setId( source.getId() );
        areaDTO.setAreaNo( source.getAreaNo() );
        areaDTO.setAreaName( source.getAreaName() );
        areaDTO.setWarehouseId( source.getWarehouseId() );
        areaDTO.setRemark( source.getRemark() );

        return areaDTO;
    }

    @Override
    public Area dto2do(AreaDTO source) {
        if ( source == null ) {
            return null;
        }

        Area area = new Area();

        area.setCreateBy( source.getCreateBy() );
        area.setCreateTime( source.getCreateTime() );
        area.setUpdateBy( source.getUpdateBy() );
        area.setUpdateTime( source.getUpdateTime() );
        area.setId( source.getId() );
        area.setAreaNo( source.getAreaNo() );
        area.setAreaName( source.getAreaName() );
        area.setWarehouseId( source.getWarehouseId() );
        area.setRemark( source.getRemark() );

        return area;
    }

    @Override
    public List<AreaVO> dos2vos(List<Area> list) {
        if ( list == null ) {
            return null;
        }

        List<AreaVO> list1 = new ArrayList<AreaVO>( list.size() );
        for ( Area area : list ) {
            list1.add( areaToAreaVO( area ) );
        }

        return list1;
    }

    protected AreaVO areaToAreaVO(Area area) {
        if ( area == null ) {
            return null;
        }

        AreaVO areaVO = new AreaVO();

        areaVO.setCreateBy( area.getCreateBy() );
        areaVO.setCreateTime( area.getCreateTime() );
        areaVO.setUpdateBy( area.getUpdateBy() );
        areaVO.setUpdateTime( area.getUpdateTime() );
        areaVO.setId( area.getId() );
        areaVO.setAreaNo( area.getAreaNo() );
        areaVO.setAreaName( area.getAreaName() );
        areaVO.setWarehouseId( area.getWarehouseId() );
        areaVO.setRemark( area.getRemark() );

        return areaVO;
    }
}
