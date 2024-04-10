<template>
  <div class="app-container">
    <el-dialog class="addApplication" :title="title" width="50%" :visible="showDialog" @close="btnCancel"
               append-to-body
    >
      <el-form
        ref="form"
        :model="formData"
        v-loading="loadingForm"
        label-width="108px"
        inline
        class="dialog-form-two"
      >
        <!--申请信息        -->
        <h2 class="infoType">申请信息</h2>
        <el-card class="radiusWeak">
          <el-form-item label="用工部门:">
            <el-input v-model="formData.applyDeptName" readonly/>
          </el-form-item>
          <el-form-item label="用工人员:">
            <el-input v-model="formData.creatorName" readonly/>
          </el-form-item>
          <el-form-item label="用工班组:">
            <el-input v-model="formData.applyGroupName" readonly/>
          </el-form-item>
          <el-form-item label="用工日期:">
            <el-date-picker
              v-model="dateValue"
              type="daterange"
              range-separator="至"
              start-placeholder="开始日期"
              end-placeholder="结束日期"
              @change="getTime"
            readonly>
            </el-date-picker>
          </el-form-item>
          <el-form-item label="派工类型:">
            <el-select v-model="formData.dispatchTypeName" disabled placeholder="请选择派工类型" style="width:93%">
              <el-option
                v-for="item in dispatchTypeEnums"
                :key="item.value"
                :label="item.label"
                :value="item.value"
              >
              </el-option>
            </el-select>
          </el-form-item>
          <el-form-item label="市场类型:">
            <el-select v-model="formData.marketTypeName" disabled placeholder="请选择市场类型" style="width:93%">
              <el-option
                v-for="item in MarketTypeEnums"
                :key="item.value"
                :label="item.label"
                :value="item.value"
              >
              </el-option>
            </el-select>
          </el-form-item>
          <el-form-item label="用工类型:">
            <el-select v-model="formData.workTypeName" disabled placeholder="请选择用工类型" style="width:93%">
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
            <el-input type="textarea" v-model="formData.employDesc" readonly style="width:107%"
                      placeholder="请输入用工描述"
            />
          </el-form-item>
          <el-form-item label="备注:">
            <el-input type="textarea" v-model="formData.remark" readonly style="width:283%"
                      :placeholder="formData.remark?formData.remark:'无'"
            />
          </el-form-item>
        </el-card>

        <!--审核意见        -->
        <div style="margin:15px 0;">
          <h2 class="infoType">审核意见</h2>
          <el-card>
            <el-form-item label="审核意见:" :class="[backFormItem]">
              <el-input type="textarea" v-model="approval.approvalDesc" style="width:283%;height: 90%"
                        placeholder="如果需要退回,请输入退回意见"
              />
            </el-form-item>
          </el-card>
        </div>
        <!--用工信息        -->
        <h2 class="infoType">用工信息</h2>
        <el-card class="radiusWeak">
          <el-form-item label="人员选择:"
                        v-show="formData.workTypeName===workTypeNameEnums[0].value ||formData.workTypeName===workTypeNameEnums[2].value"
          >
            <el-input
              type="textarea"
              v-model="employText"
              class="selectInput f14" placeholder="请选择人员"
              readonly
            />
            <el-button size="small" type="primary" plain icon="el-icon-search" @click="selectEmploy">选择</el-button>
          </el-form-item>
          <br/>
          <el-form-item label="车辆选择:"
                        v-show="formData.workTypeName===workTypeNameEnums[1].value ||formData.workTypeName===workTypeNameEnums[2].value "
          >
            <el-input
              type="textarea"
              readonly
              v-model="carText" class="selectInput f14" placeholder="请选择车辆"
            />
            <el-button size="small" type="primary" plain icon="el-icon-search" @click="selectCar">选择</el-button>
          </el-form-item>
        </el-card>

        <!--操作信息        -->
        <h2 class="infoType" style="margin-top: 10px">操作记录</h2>
        <el-table :data="approvalList" border  class="radiusWeak" :header-cell-style="{background:'#FFFFFF',color:'#80878f'}">
          <el-table-column label="序号" type="index" width="50" align="center"/>
          <el-table-column label="操作结点" align="center" prop="approvalNode"/>
          <el-table-column label="操作人" align="center" prop="approvalUserName"/>
          <el-table-column label="操作状态" align="center" >
            <template v-slot="{row}">
              <el-tag :type="row.isReject===0?'success':'danger'">{{ row.isReject===0?'通过':'退回' }}</el-tag>
            </template>
          </el-table-column>
          <el-table-column label="操作时间" width="200" align="center" prop="approvalTime"/>
          <el-table-column label="操作意见"  width="200" align="center" prop="approvalDesc"/>
        </el-table>

      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button class="radiusWeak" type="primary" icon="el-icon-check" size="small" @click="submitForm">派 工
        </el-button>
        <el-button class="radiusWeak" type="warning" icon="el-icon-close" size="small" @click="rejectForm">退 回
        </el-button>
        <el-button class="radiusWeak" size="small" @click="btnCancel">取 消</el-button>
      </div>
    </el-dialog>

    <!-- 人员/车辆选择对话框   -->
    <select-worker ref="selectWork" :select-title="selectTitle" :show-select-dialog.sync="showSelectDialog"
                   :date-value="this.dateValue"
                   @select-employ="handleSelect($event)"
    />
  </div>
</template>

<script>
import configEnums from '@/assets/js/config'
import SelectWorker from '@/views/wms/dispatch/components/select-worker'
import application from '@/api/wms/kapplication'
import employ from '@/api/wms/kemploy'
import car from '@/api/wms/kcar'
import approval from '@/api/wms/kapproval'
import application_employ from '@/api/wms/kapplication_employ'
import application_car from '@/api/wms/kapplication_car'
import { mapGetters } from 'vuex'

var Ids = []
export default {
  name: 'add-application',
  computed: {
    ...mapGetters(['realName'])
  },
  components: {
    SelectWorker
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
      approvalList:null,  //审批记录
      dateValue: [],
      formData: {},
      employData: [],
      carData: [],
      employIds: [],
      carIds: [],
      MarketTypeEnums: configEnums.marketTypeName,    //市场类型
      dispatchTypeEnums: configEnums.dispatchTypeName,  //派工类型
      workTypeNameEnums: configEnums.workTypeName,
      selectTitle: '', //人员选择框标题
      showSelectDialog: false,  //人员选择对话框
      eOrcFlag: true,  //是车辆还是人员
      employText: '',
      carText: '',
      backFormItem: 'backFormItem',//自定义CSS
      approval: {
        approvalUserName: this.realName,
        approvalDesc: '',
        approvalTime: new Date(),
        isReject: 0,
        approvalNode: '调度派工',
        applicationId: this.applicationIdStr  //注意这里是str形式 后台需要修改
      },
      loadingForm: false

    }
  },
  create() {

  },
  methods: {
    async edit(applicationId) {
      this.loadingForm = true
      await application.queryApplication(applicationId).then((res) => {
        if (res.code === 200) {
          this.formData = res.data.rows
          let time = []
          time.push(res.data.rows.startTime)
          time.push(res.data.rows.endTime)
          this.dateValue = time
        }
      })
      await approval.getApprovalListByAid(this.applicationIdStr).then((res)=>{
        this.approvalList=res.data.rows
      })
      this.loadingForm = false
    },

    btnCancel() {
      this.formData = {}
      this.employText = ''
      this.carText = ''
      this.dateValue = null
      this.$emit('update:showDialog', false)
    },
    //通过表单
    async submitForm() {
      //建立派工-员工-车辆中间表
      await application_employ.createRelationEmploy(this.applicationIdStr, this.employIds)
      await application_car.createRelationVehicle(this.applicationIdStr, this.carIds)
      await this.setApprovalInfo()
      await approval.approvalApplication(this.approval)
      await application.updateApplicationSubmit(this.applicationIdStr)
      this.$emit('update:showDialog', false)
      this.$parent.getList()
      this.$message.success('派工调度成功')
    },
    //因为有些内容无法及时传输 需要再设置
    setApprovalInfo() {
      //留痕审批记录
      this.approval.approvalUserName = this.realName
      this.approval.applicationId = this.applicationIdStr //还没接受到str 默认是空 需要重新赋值
    },

    //驳回表单
    async rejectForm() {
      await application.rejectApplication(this.applicationIdStr)
      await this.setApprovalInfo()
      this.approval.isReject = 1  //设置为驳回
      await approval.approvalApplication(this.approval)
      this.approval.isReject = 0  //设置默认通过
      this.$emit('update:showDialog', false)
      this.$parent.getList()
      this.$message.success('退回成功')
    },

    //选择人员
    selectEmploy() {
      this.selectTitle = '人员选择'
      this.eOrcFlag = true
      this.$refs.selectWork.getCompany(this.eOrcFlag)
      this.showSelectDialog = true
    },
    selectCar() {
      this.selectTitle = '车辆选择'
      this.eOrcFlag = false
      this.$refs.selectWork.getCompany(this.eOrcFlag)
      this.showSelectDialog = true
    },
    handleSelect: function(selectData) {
      Ids = [] //每次重置Ids  因为有员工和车辆要分别选择
      for (let i = 0; i < selectData.length; i++) {
        if (this.eOrcFlag) {
          Ids.push(selectData[i].employId)
        } else {
          Ids.push(selectData[i].carId)
        }
      }
      if (this.eOrcFlag) {
        this.employIds = Ids
      } else {
        this.carIds = Ids
      }
      console.log('生成选择Ids', Ids)
      if (this.eOrcFlag) {
        this.employText = ''
        employ.getListByEmployIds(Ids).then((res) => {
          this.employData = res.data.rows
          console.log(this.employData)
          if(this.employData!==null) {
            for (let i = 0; i < this.employData.length; i++) {
              this.employText += this.employData[i].employName + '-' + this.employData[i].employType + '-' + this.employData[i].employPhone + '; '
            }
          }
        })
      } else {
        this.carText = ''
        car.getListByCarIds(Ids).then((res) => {
          this.carData = res.data.rows
          console.log(this.carData)
          if(this.carData!==null){
            for (let i = 0; i < this.carData.length; i++) {
              this.carText += this.carData[i].carDriver + '-' + this.carData[i].carTypeName + '-' + this.carData[i].carLicense + '; '
            }
          }
        })
      }
      this.$message.success('选择成功')
    },
    //日期选择器 获取时间
    getTime() {
      this.formData.startTime = this.dateValue[0]
      this.formData.endTime = this.dateValue[1]
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

.backFormItem {
  margin-bottom: 4px;
}

</style>
