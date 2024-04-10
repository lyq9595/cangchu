package com.cyl.wms.convert;

import com.cyl.wms.domain.Supplier;
import com.cyl.wms.pojo.dto.SupplierDTO;
import com.cyl.wms.pojo.vo.SupplierVO;
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
public class SupplierConvertImpl implements SupplierConvert {

    @Override
    public SupplierDTO do2dto(Supplier source) {
        if ( source == null ) {
            return null;
        }

        SupplierDTO supplierDTO = new SupplierDTO();

        supplierDTO.setCreateBy( source.getCreateBy() );
        supplierDTO.setCreateTime( source.getCreateTime() );
        supplierDTO.setUpdateBy( source.getUpdateBy() );
        supplierDTO.setUpdateTime( source.getUpdateTime() );
        supplierDTO.setId( source.getId() );
        supplierDTO.setSupplierNo( source.getSupplierNo() );
        supplierDTO.setSupplierName( source.getSupplierName() );
        supplierDTO.setAddress( source.getAddress() );
        supplierDTO.setMobileNo( source.getMobileNo() );
        supplierDTO.setTelNo( source.getTelNo() );
        supplierDTO.setContact( source.getContact() );
        supplierDTO.setLevel( source.getLevel() );
        supplierDTO.setEmail( source.getEmail() );
        supplierDTO.setRemark( source.getRemark() );

        return supplierDTO;
    }

    @Override
    public Supplier dto2do(SupplierDTO source) {
        if ( source == null ) {
            return null;
        }

        Supplier supplier = new Supplier();

        supplier.setCreateBy( source.getCreateBy() );
        supplier.setCreateTime( source.getCreateTime() );
        supplier.setUpdateBy( source.getUpdateBy() );
        supplier.setUpdateTime( source.getUpdateTime() );
        supplier.setId( source.getId() );
        supplier.setSupplierNo( source.getSupplierNo() );
        supplier.setSupplierName( source.getSupplierName() );
        supplier.setAddress( source.getAddress() );
        supplier.setMobileNo( source.getMobileNo() );
        supplier.setTelNo( source.getTelNo() );
        supplier.setContact( source.getContact() );
        supplier.setLevel( source.getLevel() );
        supplier.setEmail( source.getEmail() );
        supplier.setRemark( source.getRemark() );

        return supplier;
    }

    @Override
    public List<SupplierVO> dos2vos(List<Supplier> list) {
        if ( list == null ) {
            return null;
        }

        List<SupplierVO> list1 = new ArrayList<SupplierVO>( list.size() );
        for ( Supplier supplier : list ) {
            list1.add( supplierToSupplierVO( supplier ) );
        }

        return list1;
    }

    protected SupplierVO supplierToSupplierVO(Supplier supplier) {
        if ( supplier == null ) {
            return null;
        }

        SupplierVO supplierVO = new SupplierVO();

        supplierVO.setCreateBy( supplier.getCreateBy() );
        supplierVO.setCreateTime( supplier.getCreateTime() );
        supplierVO.setUpdateBy( supplier.getUpdateBy() );
        supplierVO.setUpdateTime( supplier.getUpdateTime() );
        supplierVO.setId( supplier.getId() );
        supplierVO.setSupplierNo( supplier.getSupplierNo() );
        supplierVO.setSupplierName( supplier.getSupplierName() );
        supplierVO.setAddress( supplier.getAddress() );
        supplierVO.setMobileNo( supplier.getMobileNo() );
        supplierVO.setTelNo( supplier.getTelNo() );
        supplierVO.setContact( supplier.getContact() );
        supplierVO.setLevel( supplier.getLevel() );
        supplierVO.setEmail( supplier.getEmail() );
        supplierVO.setRemark( supplier.getRemark() );

        return supplierVO;
    }
}
