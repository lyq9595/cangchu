import request from '@/utils/request'

export  default {

  getConfirmInfo(applicationIdStr) {
    return request({
      url:`/wms/examine/getConfirmInfo/${applicationIdStr}`,
      method: 'get'
    })
  },

}










