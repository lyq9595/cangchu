//审批申请
import request from '@/utils/request'

export default {

  approvalApplication(approval) {
    return request({
      url: '/wms/approval/addApproval',
      method: 'post',
      data: approval
    })
  },
  getApprovalListByAid(applicationIdStr) {
    return request({
      url: `/wms/approval/getApprovalListByAid/${applicationIdStr}`,
      method: 'get',

    })
  }

}
