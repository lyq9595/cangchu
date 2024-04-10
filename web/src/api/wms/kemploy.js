import request from '@/utils/request'

export  default {

  getEmployByCompanyId(id,startTime,endTime) {
    return request({
      url:`/wms/employ/getEmployByCompanyId/${id}/${startTime}/${endTime}`,
      method: 'get'
    })
  },
  getListByEmployIds(Ids){
    return request({
      url:`/wms/employ/getListByEmployIds`,
      method: 'post',
      data:JSON.stringify(Ids)
    })
  },
  //假面板的
  getEByeId(id) {
    return request({
      url:`/wms/employ/getEByeId/${id}`,
      method: 'get'
    })
  },
}










