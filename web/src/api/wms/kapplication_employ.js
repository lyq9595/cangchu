//申请-员工中间表
import request from '@/utils/request'
export  default {

  createRelationEmploy(applicationId,EmployIds){
    return request({
      url:`/wms/dispatch/createRelationEmploy/${applicationId}`,
      method: 'post',
      data:EmployIds
    })
  },

  deleteRelationEmploy(applicationId,EmployIds){
    return request({
      url:`/wms/dispatch/deleteRelationEmploy/${applicationId}`,
      method: 'post',
      data:EmployIds
    })
  }


}
