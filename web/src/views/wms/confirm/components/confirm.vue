<template>
  <div class="app-container">
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
            <el-date-picker style="width: 236px"
                            v-model="dateValue"
                            type="datetimerange"
                            value-format="yyyy-MM-dd hh:mm:ss"
                            start-placeholder="开始日期"
                            end-placeholder="结束日期"
                            :default-time="['10:00:00']"
                            @change="getTime"
                            readonly
            >
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

        <!--用工信息        -->
        <h2 class="infoType">用工信息</h2>
        <el-card class="radiusWeak">
          <el-form-item label="人员选择:"
                        v-show="formData.workTypeName===workTypeNameEnums[0].value ||formData.workTypeName===workTypeNameEnums[2].value">
            <el-input type="textarea" v-model="employText" class="selectInput f14" placeholder="请选择人员" readonly/>
          </el-form-item>
          <br/>
          <el-form-item label="车辆选择:"
                        v-show="formData.workTypeName===workTypeNameEnums[1].value ||formData.workTypeName===workTypeNameEnums[2].value ">
            <el-input type="textarea"  v-model="carText" class="selectInput f14" placeholder="请选择车辆" readonly/>
          </el-form-item>
        </el-card>

        <!--用工确认        -->
        <h2 class="infoType"  style="margin-top: 15px">用工确认</h2>
        <el-table :data="content" border  class="radiusWeak" :header-cell-style="{background:'#FFFFFF',color:'#80878f'}">
          <el-table-column label="序号" type="index" width="50" align="center"/>
          <el-table-column label="规格名称" align="center" prop=""/>
          <el-table-column label="重量(吨)" align="center" prop=""/>
          <el-table-column label="数量(支/箱等)" align="center"  prop=" "/>
          <el-table-column label="车辆选择" width="200" align="center" prop=""/>
          <el-table-column label="人员选择"  width="200" align="center" prop=""/>
        </el-table>


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


        <!--操作信息        -->
        <h2 class="infoType" style="margin-top: 15px">操作记录</h2>
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



  </div>
</template>

<script>
import configEnums from '@/assets/js/config'
import application from '@/api/wms/kapplication'
import employ from '@/api/wms/kemploy'
import car from '@/api/wms/kcar'
import approval from '@/api/wms/kapproval'
import application_employ from '@/api/wms/kapplication_employ'
import application_car from '@/api/wms/kapplication_car'
import confirm from '@/api/wms/kconfirm'
import { mapGetters } from 'vuex'

var Ids = []
export default {
  name: 'add-application',
  computed: {
    ...mapGetters(['realName'])
  },
  components: {

  },
  data() {
    return {
      applicationIdStr: this.$route.params.applicationId,
      approvalList:null,  //审批记录
      dateValue: [],
      formData: {},
      employData: [],
      carData: [],
      employIds: [],
      carIds: [],
      employText: '',
      carText: '',
      MarketTypeEnums: configEnums.marketTypeName,    //市场类型
      dispatchTypeEnums: configEnums.dispatchTypeName,  //派工类型
      workTypeNameEnums: configEnums.workTypeName,
      selectTitle: '', //人员选择框标题

      backFormItem: 'backFormItem',//自定义CSS
      approval: {
        approvalUserName: this.realName,
        approvalDesc: '',
        approvalTime: new Date(),
        isReject: 0,
        approvalNode: '调度派工',
        applicationId: this.applicationIdStr  //注意这里是str形式 后台需要修改
      },
      loadingForm: false,
      content:[]

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
      await confirm.getEmployAndCarListByAid(this.applicationIdStr).then((res)=>{
        console.log("res",res.data)
        this.employData=res.data.employList
        this.carData=res.data.carList
        if(this.employData!==null){
          for (let i = 0; i < this.employData.length; i++) {
            this.employText += this.employData[i].employName + '-' + this.employData[i].employType + '-' + this.employData[i].employPhone + '; '
          }
        }
        if(this.carData!==null){
          for (let i = 0; i < this.carData.length; i++) {
            this.carText += this.carData[i].carDriver + '-' + this.carData[i].carTypeName + '-' + this.carData[i].carLicense + '; '
          }
        }

      })
      this.loadingForm = false
    },

    //取消按钮
    btnCancel() {
      this.formData = {}
      this.content=[]
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
  width: 35.5vw;
  margin-right: 2vw;
}

.backFormItem {
  margin-bottom: 4px;
}

</style>
