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
          type="datetimerange"
          value-format="yyyy-MM-dd hh:mm:ss"
          start-placeholder="开始日期"
          end-placeholder="结束日期"
          :default-time="['10:00:00']"
          @change="getTime"
        >
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
      :data="this.list"
      element-loading-text="数据加载中..."
      border
      fit
      highlight-current-row
      :row-style="{height:'15px'}"
      style="font-size: 10px"
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

      <el-table-column prop="applyDeptName" label="用工部门" width="120" align="center"/>
      <el-table-column prop="applyGroupName" label="用工班组" width="120" align="center"/>
      <el-table-column prop="creatorName" label="用工人员" width="105" align="center"/>

      <el-table-column prop="marketTypeName" label="市场类型" width="80" align="center">
        <template v-slot="{row}">
          <el-tag>{{ row.marketTypeName }}</el-tag>
        </template>
      </el-table-column>
      <el-table-column prop="startTime" label="用工日期" width="160" align="center"/>
      <el-table-column prop="dispatchTypeName" label="派工类型" width="80" align="center">
        <template v-slot="{row}">
          <el-tag>{{ row.dispatchTypeName }}</el-tag>
        </template>
      </el-table-column>
      <el-table-column prop="isSubmit" label="状态" width="140" align="center">
        <template v-slot="{row}">
          <el-tag :type="StatusInfo(row.currentStatusCode,row.isReject)">
            {{ dispatchStatus(row.currentStatusCode, row.isReject) }}
          </el-tag>
        </template>
      </el-table-column>
      <el-table-column prop="createTime" label="创建时间" width="160" align="center"/>
      <el-table-column prop="employDesc" label="用工描述" width="159"/>

      <el-table-column label="操作" fixed="right" width="200" align="center">
        <template v-slot="{row}">
          <el-button icon="el-icon-edit" type="text" size="small" :disabled="row.currentStatusCode>3"
                     @click="confirm(row.applicationId)"
          >用工审核
          </el-button>
        </template>
      </el-table-column>
    </el-table>
    <!--原始分页    -->
    <!--    <el-pagination
          v-show="total > 0"
          :total="total"
          :page-sizes="[5, 10, 15]"
          :current-page="page"
          :page-size="limit"
          @current-change="getList"
          style="padding: 30px 0; text-align: center;"
        />-->
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
import application from '@/api/wms/kapplication'
import { scrollTo } from '@/utils/scroll-to'
import ExamineApplication from '@/views/wms/examine1/components/examine-application'
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
      currentStatusCode: 3,
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
    dispatchStatus() {
      return function(currentStatusCode, isReject) {
        // return this.utils.formarSongsTime(res)
        if (isReject === 1) return '被驳回'
        const obj = configEnums.currentStatusCode.find(item => item.id === currentStatusCode)
        return obj.value
      }
    },
    //tag标签状态显示样式
    StatusInfo() {
      return function(currentStatusCode, isReject) {
        // return this.utils.formarSongs Time(res)
        if (isReject === 1) return 'danger'
        if (currentStatusCode === 3) {
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
      application.pageApplicationCondition(this.currentStatusCode, this.page, this.limit, this.applicationQuery)
        .then((response) => {
          if (response.code === 200) {
            console.log('派工单', response.data.rows)
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
      this.title = '用工组长审核'
      this.showDialog = true
      this.applicationIdStr = applicationId
      this.$refs.addApplication.edit(applicationId)
    }
  }

}
</script>

<style>

</style>
