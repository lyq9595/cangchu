//申请-车辆中间表
import request from '@/utils/request'
export  default {

  createRelationVehicle(applicationId,carIds){
    return request({
      url:`/wms/dispatch/createRelationVehicle/${applicationId}`,
      method: 'post',
      data:carIds
    })
  },

  deleteRelationVehicle(applicationId,carIds){
    return request({
      url:`/wms/dispatch/createRelationVehicle/${applicationId}`,
      method: 'post',
      data:carIds
    })
  }


}
