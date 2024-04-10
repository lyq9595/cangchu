<template>
  <div class="app-container">
    <!-- 搜索栏目   -->
    <el-form
      :model="applicationQuery"
      ref="queryForm"
      :inline="true"
      v-show="showSearch"
      label-width="100px"
      size="medium"
      class="ry_form"

    >
      <el-form-item label="部门" prop="applyDeptName">
        <el-input
          v-model="applicationQuery.applyDeptName"
          placeholder="请输入用工部门"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="班组" prop="applyDeptName">
        <el-input
          v-model="applicationQuery.applyGroupName"
          placeholder="请输入用工班组"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="时间">
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
      <el-form-item class="flex_one tr">
        <el-button
          type="primary"
          icon="el-icon-search"
          size="mini"
          @click="handleQuery"
        >搜索
        </el-button
        >
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery"
        >重置
        </el-button
        >
      </el-form-item>
    </el-form>

    <!-- 新增编辑 -->
    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          :loading="exportLoading"
          @click="handleExport"
        >导出
        </el-button
        >
      </el-col>
      <right-toolbar
        :showSearch.sync="showSearch"
        @queryTable="getList"
      ></right-toolbar>
    </el-row>

    <!-- 表格 -->
    <el-table
      v-loading="this.listLoading"
      :data="list"
      element-loading-text="数据加载中..."
      border
      fit
      highlight-current-row
      :row-style="{height:'15px'}"
      style="font-size: 10px"
      :header-cell-style="{background:'#FFFFFF',color:'#80878f'}"
    >

      <el-table-column
        label="序号"
        width="50"
        align="center"
      >
        <template slot-scope="scope">
          {{ (page - 1) * limit + scope.$index + 1 }}
        </template>
      </el-table-column>

      <el-table-column prop="checkStatus" label="状态" width="120" align="center">
        <template v-slot="{row}">
          <el-tag>
            {{ checkStatus(row.checkStatus) }}
          </el-tag>
        </template>
      </el-table-column>
      <el-table-column prop="applicationTime" label="派工时间" width="120" align="center"/>
      <el-table-column prop="applicationId" label="派工申请单号" width="105" align="center"/>
      <el-table-column prop="applyDeptName" label="用工部门" width="120" align="center"/>
      <el-table-column prop="applyGroupName" label="用工班组" width="160" align="center"/>
      <el-table-column prop="marketTypeName" label="市场类型" width="100" align="center"/>
      <el-table-column prop="dispatchTypeName" label="派工类型" width="120" align="center"/>
      <el-table-column prop="carCost" label="机力费用" width="120"/>
      <el-table-column prop="laborCost" label="人力费用" width="120"/>
      <el-table-column prop="totalCost" label="费用合计" width="120"/>

      <el-table-column label="操作" fixed="right" width="200" align="center">
        <template v-slot="{row}">
          <el-button icon="el-icon-coin" type="text" size="small" :disabled="row.checkStatus>0"
                     @click="confirm(row.applicationId)"
          >结 算
          </el-button>
        </template>
      </el-table-column>
    </el-table>

    <!--封装分页    -->
    <pagination
      v-show="total > 0"
      :total="total"
      :page.sync="page"
      :limit.sync="limit"
      @pagination="getList()"
    />

    <!--  新增对话框  -->
    <examine-application ref="addApplication" :title="title" :show-dialog.sync="showDialog"
                         :applicationIdStr="this.applicationIdStr"
    />
  </div>
</template>

<script>

import checkout from '@/api/wms/kcheckout'
import { scrollTo } from '@/utils/scroll-to'
import ExamineApplication from '@/views/wms/checkout/components/examine-application'
import configEnums from '@/assets/js/config'

export default {
  name: 'application',
  components: {
    ExamineApplication
  },
  data() {
    return {
      listLoading: false,
      exportLoading: false,
      list: null,
      page: 1,
      currentStatusCode: 8,
      limit: 6,
      total: 0,
      applicationQuery: {
        applyDeptName: '',
        applyGroupName: '',
        begin: '',
        end: ''
      },//条件查询对象
      showSearch: true,
      dateValue: [],
      title: '',
      showDialog: false,
      rowData: null,
      applicationIdStr: ''

    }
  },
  computed: {
    //状态显示文字
    checkStatus() {
      return function(checkStatus) {
       return checkStatus===0?'未结算':'已结算'
      }
    },
    //tag标签状态显示样式
    StatusInfo() {
      return function(currentStatusCode, isReject) {
        // return this.utils.formarSongs Time(res)
        if (isReject === 1 && currentStatusCode === 0) return 'danger'
        if (currentStatusCode === 2) {
          return ''
        } else {
          return 'success'
        }
      }
    }
  },
  created() {
    this.getList()
  },
  methods: {
    //获取分页查询数据
    async getList() {
      this.listLoading = true
      checkout.pageCheckoutCondition(this.page, this.limit, this.applicationQuery)
        .then((response) => {
          if (response.code === 200) {
            console.log('结算工单', response.data.rows)
            this.total = response.data.total
            this.list = response.data.rows
            this.listLoading = false
          }
        }).catch((error) => {
        console.log(error)
      })
      scrollTo(0, 800)

    },
    //日期选择器 获取时间
    getTime() {
      this.applicationQuery.begin = this.dateValue[0]
      this.applicationQuery.end = this.dateValue[1]
    },
    //搜索框搜索
    handleQuery() {
      this.getList()
    },
    //充值表单
    resetQuery() {
      this.resetForm('queryForm')
      this.dateValue = null
      this.applicationQuery.begin = null
      this.applicationQuery.end = null
      this.handleQuery()
    },
    handleExport() {
      console.log('abc')
    },

    //派工
    async confirm(applicationId) {
      this.title = '结算信息'
      this.showDialog = true
      this.applicationIdStr =  ''+applicationId
      this.$refs.addApplication.edit(applicationId)
    }
  }

}
</script>

<style>

</style>
