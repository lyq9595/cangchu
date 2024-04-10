import request from '@/utils/request'

export  default {

 getEmployAndCarListByAid(applicationIdStr){
    return request({
      url:`/wms/confirm/getEmployAndCarListByAid/${applicationIdStr}`,
      method: 'get'
    })
  },


  getHistoryEmployAndCarListByAid(applicationIdStr){
    return request({
      url:`/wms/confirm/getHistoryEmployAndCarListByAid/${applicationIdStr}`,
      method: 'get'
    })
  },

  addContent(contentList,applicationStr){
    return request({
      url:`/wms/confirm/addContent/${applicationStr}`,
      method: 'post',
      data:JSON.stringify(contentList)
    })
  }

}










