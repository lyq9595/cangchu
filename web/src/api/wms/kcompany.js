import request from '@/utils/request'

export  default {

  getEmployCompany() {
    return request({
      url:'/wms/company/getEmployCompany',
      method: 'get'

    })
  },
  getCarCompany() {
    return request({
      url:'/wms/company/getCarCompany',
      method: 'get'

    })
  }
}










