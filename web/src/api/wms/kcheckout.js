import request from '@/utils/request'

export default {

  generateCheckout(id) {
    return request({
      url: `/wms/checkout/generateCheckout/${id}`,
      method: 'post'
    })
  },


  pageCheckoutCondition( current, limit, applicationQuery) {
    return request({
      url:`/wms/checkout/pageCheckoutCondition/${current}/${limit}`,//直接拼接也可以
      method: 'post',
      data:applicationQuery //requestBody获取时 要用data
    })
  },


  updateCheckoutStatus(id) {
    return request({
      url:`/wms/checkout/updateCheckoutStatus/${id}`,//直接拼接也可以
      method: 'post'
    })
  },


  queryCheckInfoByAid(id) {
    return request({
      url:`/wms/checkout/queryCheckInfoByAid/${id}`,//直接拼接也可以
      method: 'get'
    })
  },
}
