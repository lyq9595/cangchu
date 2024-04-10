import request from '@/utils/request'

export  default {

  getCarByCompanyId(id,startTime,endTime){
    return request({
      url:`/wms/car/getCarByCompanyId/${id}/${startTime}/${endTime}`,
      method: 'get'
    })
  },

  getListByCarIds(Ids){
    return request({
      url:`/wms/car/getListByCarIds`,
      method: 'post',
      data:JSON.stringify(Ids)
    })
  },


  getCBycId(id){
    return request({
      url:`/wms/car/getCBycId/${id}`,
      method: 'get'
    })
  },
}










