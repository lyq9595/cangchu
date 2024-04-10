<template>
  <div class="app-container select-work">
    <el-row :gutter="20">
      <!--部门数据-->
      <el-col :span="4" :xs="24">
        <div class="head-container">
          <el-input
            placeholder="请输入公司名称"
            clearable
            size="small"
            prefix-icon="el-icon-search"
            style="margin-bottom: 20px"
          />
        </div>
        <div class="head-container">
          <el-tree
            :data="carCompanyData"
            :props="defaultProps"
            :expand-on-click-node="false"
            :filter-node-method="filterNode"
            ref="tree"
            default-expand-all
            highlight-current
            @node-click="handleNodeClick"
          />
        </div>
      </el-col>
      <!--用户数据-->
      <el-col :span="20" :xs="24">
        <el-form :model="queryParams" ref="queryForm" size="small" :inline="true"  label-width="68px">
          <el-form-item label="司机名称" prop="userName">
            <el-input
              v-model="queryParams.userName"
              placeholder="请输入车辆名称"
              clearable
              style="width: 240px"
              @keyup.enter.native="handleQuery"
            />
          </el-form-item>
          <el-form-item label="车牌号" >
            <el-input
              v-model="queryParams.phonenumber"
              placeholder="请输入车牌号"
              clearable
              style="width: 240px"
              @keyup.enter.native="handleQuery"
            />
          </el-form-item>

          <el-form-item label="创建时间">
            <el-date-picker
              style="width: 240px"
              value-format="yyyy-MM-dd"
              type="daterange"
              range-separator="-"
              start-placeholder="开始日期"
              end-placeholder="结束日期"
            ></el-date-picker>
          </el-form-item>
          <el-form-item>
            <el-button type="primary" icon="el-icon-search" size="mini" >搜索</el-button>
            <el-button icon="el-icon-refresh" size="mini" >重置</el-button>
          </el-form-item>
        </el-form>

        <el-row :gutter="10" class="mb8">
          <el-col :span="1.5">
            <el-button
              type="primary"
              plain
              icon="el-icon-plus"
              size="mini"
            >新增</el-button>
          </el-col>
          <el-col :span="1.5">
            <el-button
              type="success"
              plain
              icon="el-icon-edit"
              size="mini"
            >修改</el-button>
          </el-col>
          <el-col :span="1.5">
            <el-button
              type="danger"
              plain
              icon="el-icon-delete"
              size="mini"
            >删除</el-button>
          </el-col>
          <el-col :span="1.5">
            <el-button
              type="info"
              plain
              icon="el-icon-upload2"
              size="mini"
            >导入</el-button>
          </el-col>
          <el-col :span="1.5">
            <el-button
              type="warning"
              plain
              icon="el-icon-download"
              size="mini">导出</el-button>
          </el-col>
        </el-row>

        <el-table v-loading="loading"  :data="carData" >
          <el-table-column type="selection" width="50" align="center" />
          <el-table-column label="车辆编号" align="center"  prop="carId"  />
          <el-table-column label="司机姓名" align="center"  prop="carDriver"  />
          <el-table-column label="车牌号" align="center"  prop="carLicense"  />
          <el-table-column label="车辆类型" align="center"  prop="carTypeName"  width="120" />
          <el-table-column label="所属公司" align="center"  prop="companyName"  width="120" />
          <el-table-column label="司机电话" align="center"  prop="carPhone"  width="120" />
          <el-table-column label="日薪" align="center"  prop="carCost"  width="120" />
          <el-table-column
            label="操作"
            align="center"
            width="160"
            class-name="small-padding fixed-width">
              <el-button
                size="mini"
                type="text"
                icon="el-icon-edit">修改</el-button>
              <el-button
                size="mini"
                type="text"
                icon="el-icon-delete"
              >删除</el-button>
              <el-dropdown size="mini" >
                <span class="el-dropdown-link">
                  <i class="el-icon-d-arrow-right el-icon--right"></i>更多
                </span>
                <el-dropdown-menu slot="dropdown">
                  <el-dropdown-item command="handleResetPwd" icon="el-icon-key"
                                    >重置密码</el-dropdown-item>
                  <el-dropdown-item command="handleAuthRole" icon="el-icon-circle-check"
                                    >分配角色</el-dropdown-item>
                </el-dropdown-menu>
              </el-dropdown>
          </el-table-column>
        </el-table>

        <pagination
          v-show="total>0"
          :total="total"
          :page.sync="queryParams.pageNum"
          :limit.sync="queryParams.pageSize"
        />
      </el-col>
    </el-row>

  </div>
</template>

<script>
import company from '@/api/wms/kcompany'
import employ from '@/api/wms/kemploy'
import car from '@/api/wms/kcar'
import configEnums from '@/assets/js/config'

export default {
  name: 'employ-manage',
  components: {},
  props: {
  },
  data() {
    return {
      total:5,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 5,
        userName: undefined,
        phonenumber: undefined,
        status: undefined,
        deptId: undefined
      },
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
    this.getCompany();
  },
  mounted() {

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
    async getCompany() {
        this.treeLoading = true
      await company.getCarCompany().then((res) => {
        if (res.code === 200) {
          console.log('车辆')
          this.carCompanyData = res.data.rows
        }
      })

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
      await car.getCBycId(id).then((res) => {
        if (res.code === 200) {
          this.carData = res.data.rows
          console.log(this.carData)
        }
      })
      this.loading = false
    },


    //选择框处理
    handleSelectionChange(selection) {
      this.selectData=selection
    },

  }
}
</script>

<style lang="scss" scoped>


</style>
