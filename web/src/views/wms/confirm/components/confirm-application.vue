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
              readonly
              @change="getTime">
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
        <h2 class="infoType m-t-15">用工信息</h2>
        <el-card class="radiusWeak">
          <el-form-item label="人员选择:"
                        v-show="formData.workTypeName===workTypeNameEnums[0].value ||formData.workTypeName===workTypeNameEnums[2].value"
          >
            <el-input type="textarea" v-model="employText" class="selectInput f14" placeholder="请选择人员" readonly/>
          </el-form-item>
          <br/>
          <el-form-item label="车辆选择:"
                        v-show="formData.workTypeName===workTypeNameEnums[1].value ||formData.workTypeName===workTypeNameEnums[2].value "
          >
            <el-input type="textarea" v-model="carText" class="selectInput f14" placeholder="请选择车辆" readonly/>
          </el-form-item>
        </el-card>

        <!--用工确认        -->
        <div style="display: flex;justify-content: space-between;align-items: center">
          <h2 class="infoType m-t-15">用工确认</h2>
          <el-button class="radiusWeak" style="float: right" type="primary" plain icon="el-icon-plus" size="small"
                     @click="addContentItem"
          >新 增
          </el-button>
        </div>
        <el-table width="150" :data="contentList" border class="radiusWeak"
                  :header-cell-style="{background:'#FFFFFF',color:'#80878f'}"
        >
          <el-table-column label="序号" type="index" width="50" align="center"/>
          <el-table-column label="规格名称" align="center" prop="contentSpecification"/>
          <el-table-column label="重量(吨)" align="center" prop="contentWeight"/>
          <el-table-column label="数量(支/箱等)" width="150" align="center" prop="contentNum"/>
          <el-table-column label="人员选择" width="300" align="center" prop="employText"/>
          <el-table-column label="车辆选择" width="300" align="center" prop="carText"/>
          <el-table-column fixed="right" label="操作" width="100" align="center">
            <template v-slot="{row}">
              <el-button icon="el-icon-delete" type="text" size="small"
                         @click="deleteContent(row.$index)"
              >删除
              </el-button>
            </template>
          </el-table-column>

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
        <h2 class="infoType m-t-15">操作记录</h2>
        <el-table height="200" :data="approvalList" border class="radiusWeak"
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
          <el-table-column label="操作意见" width="200" align="center" prop="approvalDesc"/>
        </el-table>

      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button class="radiusWeak" type="primary" icon="el-icon-check" size="small" @click="submitForm">确 认 用 工
        </el-button>
        <el-button class="radiusWeak" type="warning" icon="el-icon-close" size="small" @click="rejectForm">退 回
        </el-button>
        <el-button class="radiusWeak" size="small" @click="btnCancel">取 消</el-button>
      </div>
    </el-dialog>

    <add-content ref="addContent" :show-content-dialog.sync="showContentDialog"
                 :applicationIdStr="this.applicationIdStr"
    ></add-content>

  </div>
</template>

<script>
import configEnums from '@/assets/js/config'
import application from '@/api/wms/kapplication'
import approval from '@/api/wms/kapproval'
import confirm from '@/api/wms/kconfirm'
import { mapGetters } from 'vuex'
import AddContent from '@/views/wms/confirm/components/add-content'
import employ from '@/api/wms/kemploy'
import car from '@/api/wms/kcar'

var Ids = []
export default {
  name: 'add-application',
  computed: {
    ...mapGetters(['realName'])
  },
  components: {
    AddContent
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
        approvalNode: '用工确认',
        applicationId: this.applicationIdStr  //注意这里是str形式 后台需要修改
      },
      loadingForm: false,
      contentList: [],
      showContentDialog: false

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

      await approval.getApprovalListByAid(this.applicationIdStr).then((res) => {
        this.approvalList = res.data.rows
      })
      await confirm.getEmployAndCarListByAid(this.applicationIdStr).then((res) => {
        console.log('res', res.data)
        this.employData = res.data.employList
        this.carData = res.data.carList
        if (this.employData !== null) {
          for (let i = 0; i < this.employData.length; i++) {
            this.employText += this.employData[i].employName + '-' + this.employData[i].employType + '-' + this.employData[i].employPhone + '; '
          }
        }
        if (this.carData !== null) {
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
      this.content = []
      this.employText = ''
      this.carText = ''
      this.dateValue = null
      this.contentList=[]
      this.$emit('update:showDialog', false)
    },
    //通过表单
    async submitForm() {
      await this.setApprovalInfo()
      await approval.approvalApplication(this.approval)
      await application.updateApplicationSubmit(this.applicationIdStr)
      confirm.addContent(this.contentList,this.applicationIdStr).then((res)=>{
        console.log("返回数据：",res.data.rows)
      })
      this.$emit('update:showDialog', false)
      this.$parent.getList()
      this.$message.success('用工确认成功')
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
    },

    //新增用工内容
    addContentItem() {
      this.$refs.addContent.openCreate(this.applicationIdStr)
      this.showContentDialog = true

    },

    deleteContent(rowIndex) {
      this.contentList.splice(rowIndex, 1)
    },
    async handleContentForm(contentData, eIds, cIds) {
      console.log(contentData)
      console.log("用工项选择的员工ID：",eIds)
      console.log("用工项选择的员工ID：",cIds)
      let contentItem = {}
      let eList = []
      let cList=[]
      contentItem.contentSpecification = contentData.contentSpecification
      contentItem.contentWeight = contentData.contentWeight
      contentItem.contentNum = contentData.contentNum
      contentItem.eIds = eIds
      contentItem.cIds = cIds
      contentItem.employText = ''
      contentItem.carText = ''
      await employ.getListByEmployIds(eIds).then((res) => {
        eList = res.data.rows
      })
      if (eList.length !== 0) {
        for (let i = 0; i < eList.length; i++) {
          console.log(eList[i])
          contentItem.employText += eList[i].employName + '-' + eList[i].employType + '-' + eList[i].employPhone + '; '
        }
      }

      await car.getListByCarIds(cIds).then((res) => {
        cList = res.data.rows
      })
      if (cList.length !== 0) {
        for (let i = 0; i < cList.length; i++) {
          contentItem.carText += cList[i].carDriver + '-' + cList[i].carTypeName + '-' + cList[i].carLicense + '; '
        }
      }
      /* console.log("用工项员工List：",eList)
      console.log("用工项车辆List：",cList)
      console.log("新增用工项内容：",contentItem) */
      /* JSON.stringify(this.contentList.eIds)
      JSON.stringify(this.contentList.cIds) */
      this.contentList.push(contentItem)
      console.log(this.contentList)
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

.m-t-15 {
  margin-top: 15px;
}

</style>
