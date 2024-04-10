package com.cyl.wms.convert;

import com.cyl.wms.domain.Customer;
import com.cyl.wms.pojo.dto.CustomerDTO;
import com.cyl.wms.pojo.vo.CustomerVO;
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
public class CustomerConvertImpl implements CustomerConvert {

    @Override
    public CustomerDTO do2dto(Customer source) {
        if ( source == null ) {
            return null;
        }

        CustomerDTO customerDTO = new CustomerDTO();

        customerDTO.setCreateBy( source.getCreateBy() );
        customerDTO.setCreateTime( source.getCreateTime() );
        customerDTO.setUpdateBy( source.getUpdateBy() );
        customerDTO.setUpdateTime( source.getUpdateTime() );
        customerDTO.setId( source.getId() );
        customerDTO.setCustomerNo( source.getCustomerNo() );
        customerDTO.setCustomerName( source.getCustomerName() );
        customerDTO.setAddress( source.getAddress() );
        customerDTO.setMobile( source.getMobile() );
        customerDTO.setTel( source.getTel() );
        customerDTO.setCustomerPerson( source.getCustomerPerson() );
        customerDTO.setCustomerLevel( source.getCustomerLevel() );
        customerDTO.setEmail( source.getEmail() );
        customerDTO.setRemark( source.getRemark() );

        return customerDTO;
    }

    @Override
    public Customer dto2do(CustomerDTO source) {
        if ( source == null ) {
            return null;
        }

        Customer customer = new Customer();

        customer.setCreateBy( source.getCreateBy() );
        customer.setCreateTime( source.getCreateTime() );
        customer.setUpdateBy( source.getUpdateBy() );
        customer.setUpdateTime( source.getUpdateTime() );
        customer.setId( source.getId() );
        customer.setCustomerNo( source.getCustomerNo() );
        customer.setCustomerName( source.getCustomerName() );
        customer.setAddress( source.getAddress() );
        customer.setMobile( source.getMobile() );
        customer.setTel( source.getTel() );
        customer.setCustomerPerson( source.getCustomerPerson() );
        customer.setCustomerLevel( source.getCustomerLevel() );
        customer.setEmail( source.getEmail() );
        customer.setRemark( source.getRemark() );

        return customer;
    }

    @Override
    public List<CustomerVO> dos2vos(List<Customer> list) {
        if ( list == null ) {
            return null;
        }

        List<CustomerVO> list1 = new ArrayList<CustomerVO>( list.size() );
        for ( Customer customer : list ) {
            list1.add( customerToCustomerVO( customer ) );
        }

        return list1;
    }

    protected CustomerVO customerToCustomerVO(Customer customer) {
        if ( customer == null ) {
            return null;
        }

        CustomerVO customerVO = new CustomerVO();

        customerVO.setCreateBy( customer.getCreateBy() );
        customerVO.setCreateTime( customer.getCreateTime() );
        customerVO.setUpdateBy( customer.getUpdateBy() );
        customerVO.setUpdateTime( customer.getUpdateTime() );
        customerVO.setId( customer.getId() );
        customerVO.setCustomerNo( customer.getCustomerNo() );
        customerVO.setCustomerName( customer.getCustomerName() );
        customerVO.setAddress( customer.getAddress() );
        customerVO.setMobile( customer.getMobile() );
        customerVO.setTel( customer.getTel() );
        customerVO.setCustomerPerson( customer.getCustomerPerson() );
        customerVO.setCustomerLevel( customer.getCustomerLevel() );
        customerVO.setEmail( customer.getEmail() );
        customerVO.setRemark( customer.getRemark() );

        return customerVO;
    }
}
