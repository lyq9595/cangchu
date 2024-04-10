<template>
  <div class="app-container">
    <el-dialog class="addApplication" :title="title" width="50%" :visible="showDialog" @close="btnCancel"
               append-to-body v-loading="loading"
    >
      <el-form
        ref="addApplication"
        :model="formData"
        :rules="rules"
        label-width="108px"
        inline
        class="dialog-form-two"
      >
        <!--申请信息        -->
        <h2 class="infoType">申请信息</h2>
        <el-card class="radiusWeak">
          <el-form-item label="用工部门:">
            <el-input v-model="formData.applyDeptName" disabled/>
          </el-form-item>
          <el-form-item label="用工人员:">
            <el-input v-model="formData.creatorName" disabled/>
          </el-form-item>
          <el-form-item label="用工班组:">
            <el-input v-model="formData.applyGroupName" disabled/>
          </el-form-item>
          <el-form-item label="用工日期:">
            <el-date-picker
              v-model="dateValue"
              type="daterange"
              range-separator="至"
              start-placeholder="开始日期"
              end-placeholder="结束日期"
              @change="getTime">
            </el-date-picker>
          </el-form-item>
          <el-form-item label="派工类型:" prop="dispatchTypeName">
            <el-select v-model="formData.dispatchTypeName" placeholder="请选择派工类型" style="width:93%">
              <el-option
                v-for="item in dispatchTypeEnums"
                :key="item.value"
                :label="item.label"
                :value="item.value"
              >
              </el-option>
            </el-select>
          </el-form-item>
          <el-form-item label="市场类型:" prop="marketTypeName">
            <el-select v-model="formData.marketTypeName" placeholder="请选择市场类型" style="width:93%">
              <el-option
                v-for="item in MarketTypeEnums"
                :key="item.value"
                :label="item.label"
                :value="item.value"
              >
              </el-option>
            </el-select>
          </el-form-item>
          <el-form-item label="用工类型:" prop="workTypeName">
            <el-select v-model="formData.workTypeName" placeholder="请选择用工类型" style="width:93%">
              <el-option
                v-for="item in workTypeNameEnums"
                :key="item.value"
                :label="item.label"
                :value="item.value"
              >
              </el-option>
            </el-select>
          </el-form-item>
          <el-form-item label="用工描述:">
            <el-input type="textarea" v-model="formData.employDesc" style="width:107%" placeholder="请输入用工描述"/>
          </el-form-item>
          <el-form-item label="备注:">
            <el-input type="textarea" v-model="formData.remark" style="width:283%" placeholder="请输入备注"/>
          </el-form-item>
        </el-card>


        <!--操作信息        -->
        <h2 class="infoType" style="margin-top: 15px">操作记录</h2>
        <el-table :data="approvalList" border class="radiusWeak"
                  :header-cell-style="{background:'#FFFFFF',color:'#80878f'}"
        >
          <el-table-column label="序号" type="index" width="50" align="center"/>
          <el-table-column label="操作结点" align="center" prop="approvalNode"/>
          <el-table-column label="操作人" align="center" prop="approvalUserName"/>
          <el-table-column label="操作状态" align="center">
            <template v-slot="{row}">
              <el-tag :type="row.isReject===0?'success':'danger'">{{ row.isReject === 0 ? '通过' : '退回' }}</el-tag>
            </template>
          </el-table-column>
          <el-table-column label="操作时间" width="200" align="center" prop="approvalTime"/>
          <el-table-column label="操作意见" width="200" align="center" prop="approvalDesc"></el-table-column>
        </el-table>


      </el-form>

      <div slot="footer" class="dialog-footer">
        <el-button class="radiusWeak" type="primary" icon="el-icon-check" size="small" @click="BtnSubmit">
          提交派工
        </el-button>
        <el-button class="radiusWeak" type="primary" icon="el-icon-circle-check" size="small" @click="BtnOK">
          保存记录
        </el-button>
        <el-button class="radiusWeak" size="small" @click="btnCancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import configEnums from '@/assets/js/config'
import { mapGetters } from 'vuex'
import application from '@/api/wms/kapplication'
import approval from '@/api/wms/kapproval'

export default {
  name: 'add-application',
  components: {},
  computed: {
    ...mapGetters(['realName'])
  },
  props: {
    title: {
      type: String,
      default: null
    },
    showDialog: {
      type: Boolean,
      default: false
    },
    applicationIdStr: {
      type: String,
      default: null
    }
  },
  data() {
    return {
      approvalList: null,  //审批记录
      formData: {
        applyDeptName: '乌仓储运输部',
        creatorName: '' + this.realName,
        applyGroupName: '乌仓储运输部',
        dispatchTypeName: '',
        startTime: null,
        endTime: null,
        marketTypeName: '',
        workTypeName: '',
        employDesc: '',
        remark: '',
        isSubmit: 0
      },
      aid:'',
      // applicationIdStr:this.applicationIdStr,
      MarketTypeEnums: configEnums.marketTypeName,    //市场类型
      dispatchTypeEnums: configEnums.dispatchTypeName,  //派工类型
      workTypeNameEnums: configEnums.workTypeName,
      dateValue: [],    //范围选择框时间值
      rules: {
        date: [{ required: true, message: '请选择用工日期', trigger: 'blur' }],
        dispatchTypeName: [{ required: true, message: '请选择派工类型', trigger: 'blur' }],
        workTypeName: [{ required: true, message: '请选择用工类型', trigger: 'blur' }],
        marketTypeName: [{ required: true, message: '请选择市场类型', trigger: 'blur' }]
      },
      approval: {
        approvalUserName: this.realName,
        approvalDesc: '',
        approvalTime: new Date(),
        isReject: 0,
        approvalNode: '派工申请',
        applicationId: this.applicationIdStr || this.aid  //注意这里是str形式 后台需要修改
      },
      loading: false

    }
  },
  created() {
    this.formData.creatorName = '' + this.realName
  },

  methods: {
    async edit(applicationId) {
      this.loading = true
      await application.queryApplication(applicationId).then((res) => {
        if (res.code === 200) {
          this.formData = res.data.rows
          let time = []
          time.push(res.data.rows.startTime)
          time.push(res.data.rows.endTime)
          this.dateValue = time
        }
      })
      await approval.getApprovalListByAid(applicationId).then((res) => {
        this.approvalList = res.data.rows
      })
      this.loading = false
    },
    btnCancel() {
      this.dateValue = null
      this.approvalList = []
      this.formData = {
        applyDeptName: '乌仓储运输部',
        creatorName: '' + this.realName,
        applyGroupName: '乌仓储运输部',
        dispatchTypeName: '',
        startTime: null,
        endTime: null,
        marketTypeName: '',
        workTypeName: '',
        employDesc: '',
        remark: '',
        currentStatusCode: null
      }
      this.$refs.addApplication.resetFields()// 移除校验
      // this.$emit('handler-id', null)
      this.$refs.addApplication.resetFields()// 移除校验
      this.$emit('update:showDialog', false)
    },
    //提交表单
    async BtnOK() {
      await this.$refs.addApplication.validate()
      if (this.applicationIdStr) {
        console.log('修改')
        await application.updateApplication(this.formData)
      } else {
        // 新增
        console.log('新增')
        await application.addApplication(this.formData).then((res)=>{
          this.aid=res.data.id
        })
      }
      this.$message.success('操作成功')
      this.$emit('update:showDialog', false)// 不用手动重置表单 弹层关闭会间接调用close事件 close绑定了close方法
      this.$parent.getList()
    },
    async BtnSubmit(){
      await this.$confirm('确定提交该申请吗?')
      await this.setApprovalInfo()
      await this.BtnOK()
      this.applicationIdStr===''?this.approval.applicationId=this.aid:this.approval.applicationId=this.applicationIdStr
      await application.updateApplicationSubmit(this.applicationIdStr?this.applicationIdStr:this.aid)
      await approval.approvalApplication(this.approval)

    },

    //日期选择器 获取时间
    getTime() {
      this.formData.startTime = this.dateValue[0]
      this.formData.endTime = this.dateValue[1]
    },
    //因为有些内容无法及时传输 需要再设置
    setApprovalInfo() {
      //留痕审批记录
      this.approval.approvalUserName = this.realName
      this.approval.applicationId = this.applicationIdStr //还没接受到str 默认是空 需要重新赋值
    }

  }//methods
}
</script>

<style lang="scss" scoped>
.infoType {
  font-weight: bold;
  font-size: 1vw;
  color: rgb(70, 166, 255);
  margin-bottom: 0.6vw;
  margin-left: 0.4vw;
}

.radiusWeak {
  border-radius: 0.2vw;
}

.selectInput {
  width: 33vw;
  margin-right: 2vw;
}


</style>
