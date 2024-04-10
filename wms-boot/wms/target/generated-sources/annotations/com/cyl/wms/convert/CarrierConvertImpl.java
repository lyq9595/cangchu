package com.cyl.wms.convert;

import com.cyl.wms.domain.Carrier;
import com.cyl.wms.pojo.dto.CarrierDTO;
import com.cyl.wms.pojo.vo.CarrierVO;
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
public class CarrierConvertImpl implements CarrierConvert {

    @Override
    public CarrierDTO do2dto(Carrier source) {
        if ( source == null ) {
            return null;
        }

        CarrierDTO carrierDTO = new CarrierDTO();

        carrierDTO.setCreateBy( source.getCreateBy() );
        carrierDTO.setCreateTime( source.getCreateTime() );
        carrierDTO.setUpdateBy( source.getUpdateBy() );
        carrierDTO.setUpdateTime( source.getUpdateTime() );
        carrierDTO.setId( source.getId() );
        carrierDTO.setCarrierNo( source.getCarrierNo() );
        carrierDTO.setCarrierName( source.getCarrierName() );
        carrierDTO.setAddress( source.getAddress() );
        carrierDTO.setMobile( source.getMobile() );
        carrierDTO.setTel( source.getTel() );
        carrierDTO.setContact( source.getContact() );
        carrierDTO.setLevel( source.getLevel() );
        carrierDTO.setEmail( source.getEmail() );
        carrierDTO.setRemark( source.getRemark() );

        return carrierDTO;
    }

    @Override
    public Carrier dto2do(CarrierDTO source) {
        if ( source == null ) {
            return null;
        }

        Carrier carrier = new Carrier();

        carrier.setCreateBy( source.getCreateBy() );
        carrier.setCreateTime( source.getCreateTime() );
        carrier.setUpdateBy( source.getUpdateBy() );
        carrier.setUpdateTime( source.getUpdateTime() );
        carrier.setId( source.getId() );
        carrier.setCarrierNo( source.getCarrierNo() );
        carrier.setCarrierName( source.getCarrierName() );
        carrier.setAddress( source.getAddress() );
        carrier.setMobile( source.getMobile() );
        carrier.setTel( source.getTel() );
        carrier.setContact( source.getContact() );
        carrier.setLevel( source.getLevel() );
        carrier.setEmail( source.getEmail() );
        carrier.setRemark( source.getRemark() );

        return carrier;
    }

    @Override
    public List<CarrierVO> dos2vos(List<Carrier> list) {
        if ( list == null ) {
            return null;
        }

        List<CarrierVO> list1 = new ArrayList<CarrierVO>( list.size() );
        for ( Carrier carrier : list ) {
            list1.add( carrierToCarrierVO( carrier ) );
        }

        return list1;
    }

    protected CarrierVO carrierToCarrierVO(Carrier carrier) {
        if ( carrier == null ) {
            return null;
        }

        CarrierVO carrierVO = new CarrierVO();

        carrierVO.setCreateBy( carrier.getCreateBy() );
        carrierVO.setCreateTime( carrier.getCreateTime() );
        carrierVO.setUpdateBy( carrier.getUpdateBy() );
        carrierVO.setUpdateTime( carrier.getUpdateTime() );
        carrierVO.setId( carrier.getId() );
        carrierVO.setCarrierNo( carrier.getCarrierNo() );
        carrierVO.setCarrierName( carrier.getCarrierName() );
        carrierVO.setAddress( carrier.getAddress() );
        carrierVO.setMobile( carrier.getMobile() );
        carrierVO.setTel( carrier.getTel() );
        carrierVO.setContact( carrier.getContact() );
        carrierVO.setLevel( carrier.getLevel() );
        carrierVO.setEmail( carrier.getEmail() );
        carrierVO.setRemark( carrier.getRemark() );

        return carrierVO;
    }
}
