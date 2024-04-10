// 员工
export default {
  // 用工部门
  applyDeptName: [
    {
      value: '乌运储公司'
    },
  ],

  // 用工班组
  applyGroupName: [
    {
      value: '乌运储公司'
    }
  ],

  // 创建者
  creatorName: [
    {
      value: '仓库管理员'
    }
  ],


  // 市场类型
  marketTypeName: [
    {
      id:1,
      value: '外部',
      label:'外部'
    },
    {
      id:2,
      value: '内部',
      label:'内部'
    },
  ],

  // 派工类型  装载 零活 倒料 小车派工  lcliyingqi 58
  dispatchTypeName: [
    {
      id:1,
      value: '装载',
      label:'装载'
    },
    {
      id:2,
      value: '零活',
      label:'零活'
    },
    {
      id:3,
      value: '倒料',
      label:'倒料'
    },
    {
      id:4,
      value: '小车派工',
      label:'小车派工'
    },
  ],
  // 市场类型  lcliyingqi 58
  workTypeName: [
    {
      id:1,
      value: '人力',
      label:'人力'
    },
    {
      id:2,
      value: '机力',
      label:'机力'
    },
    {
      id:3,
      value: '人力-机力',
      label:'人力-机力'
    },
  ],

  // 状态对应编号
  currentStatusCode: [
    {
      id:0,
      value: "未提交"
    },
    {
      id:1,
      value: "待调度派工"
    },
    {
      id:2,
      value: "待用工确认"
    },
    {
      id:3,
      value: "待用工组长审核"
    },
    {
      id:4,
      value: "待调度组长审核"
    },
    {
      id:5,
      value: "待计价员审核"
    },
    {
      id:6,
      value: "待计价组长审核"
    },
    {
      id:7,
      value: "待主管组长审核"
    },
    {
      id:8,
      value: "待结算"
    },
    {
      id:9,
      value: "流程结束"
    },
    {
      id:10,
      value: "流程结束"
    },
  ]


}

