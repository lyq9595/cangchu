<template>
  <div class="app-container select-work">
    <el-dialog :title="selectTitle" :visible="showSelectDialog" @close="btnCancel">
      <div style="margin-bottom: 1.0rem">
        <el-row>
          <el-col :span="7">
            <div class="f16">所属公司</div>
          </el-col>
          <el-col :span="12">
            <div class="f16">{{ selectTitle === '人员选择' ? '人员数据' : '车辆选择' }}</div>
          </el-col>
        </el-row>
      </div>
      <el-row>
        <!--左侧选择该公司        -->
        <el-col :span="3" :xs="24">
          <div class="head-container">
            <el-tree
              v-loading="treeLoading"
              node-key="id"
              :data="selectTitle==='人员选择'?employCompanyData:carCompanyData"
              :props="defaultProps"
              :expand-on-click-node="false"
              ref="tree"
              highlight-current
              @node-click="handleNodeClick"
            />
          </div>
        </el-col>
        <!-- 右侧公司员工       -->
        <el-col :span="20" :xs="24" :offset="1">
          <div v-show="selectTitle==='人员选择'">
            <el-table :data="employData" v-loading="loading" @selection-change="handleSelectionChange">
              <el-table-column type="selection" align="center" :selectable="checkSelectable"/>
              <el-table-column label="员工编号" align="center" prop="employId"/>
              <el-table-column label="姓名" align="center" prop="employName"/>
              <el-table-column label="班组" align="center" prop="employType"/>
              <el-table-column label="联系方式" align="center" prop="employPhone"/>
              <el-table-column label="公司名称" align="center" prop="companyName"/>
              <el-table-column label="调度信息" align="center" prop="isJob">
                <template v-slot="{row}">
                  <el-tag :type="statusInfo(row.isJob)">{{ dispatchStatus(row.isJob) }}</el-tag>
                </template>
              </el-table-column>
            </el-table>
          </div>
          <div v-show="selectTitle==='车辆选择'">
            <el-table :data="carData" v-loading="loading" @selection-change="handleSelectionChange">
              <el-table-column type="selection" width="45" align="center" :selectable="checkSelectable"/>
              <el-table-column label="车辆编号" width="70" align="center" prop="carId"/>
              <el-table-column label="司机名称" align="center" prop="carDriver"/>
              <el-table-column label="车辆类型" width="80" align="center" prop="carTypeName"/>
              <el-table-column label="车牌号" align="center" prop="carLicense"/>
              <el-table-column label="联系电话" align="center" prop="carPhone"/>
              <el-table-column label="公司名称" align="center" prop="companyName"/>
              <el-table-column label="调度信息" align="center" prop="isJob">
                <template v-slot="{row}">
                  <el-tag :type="carStatusInfo(row.isJob)">{{ carDispatchStatus(row.isJob) }}</el-tag>
                </template>
              </el-table-column>
            </el-table>
          </div>
        </el-col>
      </el-row>
      <div slot="footer" class="dialog-footer">
        <el-button class="radiusWeak" type="primary" size="small" icon="el-icon-check" @click="submitForm">确 定
        </el-button>
        <el-button class="radiusWeak" size="small" @click="btnCancel">取 消</el-button>
      </div>
    </el-dialog>

  </div>
</template>

<script>
import company from '@/api/wms/kcompany'
import employ from '@/api/wms/kemploy'
import car from '@/api/wms/kcar'
import configEnums from '@/assets/js/config'

export default {
  name: 'select-worker',
  components: {},
  props: {
    selectTitle: {
      type: String,
      default: null
    },
    showSelectDialog: {
      type: Boolean,
      default: false
    },
    dateValue: {
      type: Array,
      default: null
    }

  },
  data() {
    return {
      employIds: [],
      carIds: [],
      companyId: null,
      employCompanyData: [],//员工对应公司数据
      carCompanyData: [],//车辆对应公司数据
      //el-tree组件默认对应规则
      defaultProps: {
        id: 'companyId',
        children: 'children',
        label: 'companyName'
      },
      loading: false,
      treeLoading: false,
      employData: [],

      carData: [],
      selectData: []  //表格选中数据id

    }
  },
  created() {

  },
  mounted() {
    // this.getCompany();
  },
  computed: {
    //状态显示文字
    dispatchStatus() {
      return function(isJob) {
        if (isJob === 1) {
          return '与已有工单时间冲突'
        } else {
          return '可调度'
        }
      }
    },
    //tag标签状态显示样式
    statusInfo() {
      return function(isJob) {
        if (isJob === 1) {
          return 'danger'
        } else {
          return ''
        }
      }
    },
    //状态显示文字
    carDispatchStatus() {
      return function(isJob) {
        if (isJob === 1) {
          return '与已有工单时间冲突'
        } else {
          return '可调度'
        }
      }
    },
    //tag标签状态显示样式
    carStatusInfo() {
      return function(isJob) {
        if (isJob === 1) {
          return 'danger'
        } else {
          return ''
        }
      }
    }
  },
  methods: {
    //获取公司数据
    async getCompany(flag) {
      if (flag) {
        this.treeLoading = true
        await company.getEmployCompany().then((res) => {
          if (res.code === 200) {
            console.log('员工')
            this.employCompanyData = res.data.rows
          }
        })
      } else {
        await company.getCarCompany().then((res) => {
          if (res.code === 200) {
            console.log('车辆')
            this.carCompanyData = res.data.rows
          }
        })
      }
      this.treeLoading = false
    },

    btnCancel() {
      this.$emit('update:showSelectDialog', false)
      this.employCompanyData = null
      this.carCompanyData = null
      this.employData = null
      this.carData = null
      this.selectData = null
    },
    // 筛选节点
    filterNode(value, data) {
      if (!value) return true
      return data.label.indexOf(value) !== -1
    },
    // 节点单击事件
    handleNodeClick(data) {
      this.companyId = data.companyId
      this.handleQuery(this.companyId)
    },
    //查询公司相应数据
    async handleQuery(id) {
      this.loading = true
      if (this.selectTitle === '人员选择') {
        await employ.getEmployByCompanyId(id, this.dateValue[0], this.dateValue[1]).then((res) => {
          if (res.code === 200) {
            this.employData = res.data.rows
          }
        })
      } else {
        await car.getCarByCompanyId(id, this.dateValue[0], this.dateValue[1]).then((res) => {
          if (res.code === 200) {
            this.carData = res.data.rows
          }
        })
      }
      this.loading = false
    },
    submitForm() {
      this.$emit('select-employ', this.selectData)
      this.$emit('update:showSelectDialog', false)
    },

    //选择框处理
    handleSelectionChange(selection) {
      this.selectData=selection
    },

    checkSelectable(row, index) {
      return row.isJob === 0
    }
  }
}
</script>

<style lang="scss" scoped>


</style>
