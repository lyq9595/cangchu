<template>
  <div class="app-container contentApplication">
    <el-dialog title="用工确认" :visible="showContentDialog" @close="btnCancel">
      <el-form ref="form" :model="formData" label-width="108px" inline class="dialog-form-two">
        <el-form-item label="名称规格:">
          <el-input  v-model="formData.contentSpecification" aria-placeholder="请输入名称规格"/>
        </el-form-item>
        <el-form-item label="重量(吨):">
          <el-input-number v-model="formData.contentWeight"  :min="0" :max="1000000"></el-input-number>
        </el-form-item>
        <el-form-item label="数量(支/箱等):">
          <el-input-number v-model="formData.contentNum"  :min="0" :max="100000" ></el-input-number>
        </el-form-item>
        <el-form-item label=" ">

        </el-form-item>
        <el-form-item label="人员选择">
          <el-select v-model="employIds" multiple placeholder="请选择">
            <el-option
              v-for="employ in this.employData"
              :key="employ.employId"
              :label="employ.employName+' - '+employ.employType"
              :value="employ.employId">
            </el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="人员选择">
          <el-select width="600" v-model="carIds" multiple placeholder="请选择">
            <el-option
              v-for="car in this.carData"
              :key="car.carId"
              :label="car.carDriver+' - '+car.carTypeName"
              :value="car.carId">
            </el-option>
          </el-select>
        </el-form-item>
      </el-form>

      <div slot="footer" class="dialog-footer">
        <el-button class="radiusWeak" type="primary" icon="el-icon-check" size="small" @click="submitForm">确认
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
import confirm from '@/api/wms/kconfirm'

export default {
  name: 'select-worker',
  components: {},
  props: {
    showContentDialog: {
      type: Boolean,
      default: false
    },
    applicationIdStr:{
      type:String,
      default:null
    }

  },
  data() {
    return {
      formData:{
        contentSpecification:'',
        contentWeight:0,
        contentNum:0,

      },
      employIds:[],
      carIds:[],
      employData: [],
      carData: [],



    }
  },
  created() {

  },
  mounted() {

  },
  computed: {


  },
  methods: {
    async openCreate(applicationIdStr){
      await confirm.getEmployAndCarListByAid(applicationIdStr).then((res)=>{
        if (this.employData !== null)this.employData = res.data.employList
        if (this.carData !== null) this.carData = res.data.carList

      })

    },

    btnCancel() {
      this.formData={
        contentSpecification:'',
        contentWeight:0,
        contentNum:0,
      }
      this.employIds=[]
      this.carIds=[]
      this.$emit('update:showContentDialog', false)
    },

    submitForm() {
      this.$parent.handleContentForm(this.formData,this.employIds,this.carIds)

      this.btnCancel()
    },


  }
}
</script>

<style lang="scss" scoped>


</style>
