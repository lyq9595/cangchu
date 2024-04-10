import request from '@/utils/request'

export  default {
  test() {
    return request({
      url: '/wms/dispatch/test',
      method: 'get',
    })
  },

  pageApplicationCondition(currentStatusCode, current, limit, applicationQuery) {
    return request({
      url:`/wms/dispatch/pageApplicationCondition/${currentStatusCode}/${current}/${limit}`,//直接拼接也可以
      method: 'post',
      data:applicationQuery //requestBody获取时 要用data
    })
  },
  addApplication(application){
    return request({
      url:'/wms/dispatch/addApplication',
      method: 'post',
      data:application
    })
  },
  queryApplication(applicationId){
    return request({
      url:'/wms/dispatch/getApplicationById?applicationIdStr='+applicationId,
      method: 'get',
    })
  },
  updateApplication(application){
    return request({
      url:'/wms/dispatch/updateApplication',
      method: 'post',
      data:application
    })
  },

  updateApplicationSubmit(applicationId){
    return request({
      url:`/wms/dispatch/updateApplicationSubmit/${applicationId}`,
      method: 'post',
    })
  },
  rejectApplication(applicationId){
    return request({
      url:`/wms/dispatch/rejectApplication/${applicationId}`,
      method: 'post',
    })
  },

  deleteApplication(applicationId){
    return request({
      url:'/wms/dispatch/deleteApplication?applicationId='+applicationId,
      method: 'delete',
    })
  },


}










