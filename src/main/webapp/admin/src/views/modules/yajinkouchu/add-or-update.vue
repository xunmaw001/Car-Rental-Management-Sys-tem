<template>
  <div>
    <el-form
      class="detail-form-content"
      ref="ruleForm"
      :model="ruleForm"
      :rules="rules"
      label-width="80px"
    >
      <el-row>
                  <el-col :span="12">
        <el-form-item  v-if="type!='info'"  label="用户名" prop="yonghuming">
          <el-input v-model="ruleForm.yonghuming" 
              placeholder="用户名" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.yonghuming" label="用户名" prop="yonghuming">
              <el-input v-model="ruleForm.yonghuming" 
                placeholder="用户名" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
        <el-form-item  v-if="type!='info'"  label="姓名" prop="xingming">
          <el-input v-model="ruleForm.xingming" 
              placeholder="姓名" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.xingming" label="姓名" prop="xingming">
              <el-input v-model="ruleForm.xingming" 
                placeholder="姓名" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
        <el-form-item  v-if="type!='info'"  label="押金" prop="yajin">
          <el-input v-model="ruleForm.yajin" 
              placeholder="押金" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.yajin" label="押金" prop="yajin">
              <el-input v-model="ruleForm.yajin" 
                placeholder="押金" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                                          <el-col :span="12">
        <el-form-item  v-if="type!='info'" label="扣除日期" prop="kouchuriqi">
            <el-date-picker
                format="yyyy 年 MM 月 dd 日"
                value-format="yyyy-MM-dd"
                v-model="ruleForm.kouchuriqi" 
                type="date"
                placeholder="扣除日期">
            </el-date-picker> 
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.kouchuriqi" label="扣除日期" prop="kouchuriqi">
              <el-input v-model="ruleForm.kouchuriqi" 
                placeholder="扣除日期" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        </el-row>
                                                                  <el-row>
            <el-col :span="24">
              <el-form-item v-if="type!='info'" label="扣除理由" prop="kouchuliyou">
                <el-input
                  style="min-width: 200px; max-width: 600px;"
                  type="textarea"
                  :rows="8"
                  placeholder="扣除理由"
                  v-model="ruleForm.kouchuliyou">
                </el-input>
              </el-form-item>
              <div v-else>
                <el-form-item v-if="ruleForm.kouchuliyou" label="扣除理由" prop="kouchuliyou">
                    <span>{{ruleForm.kouchuliyou}}</span>
                </el-form-item>
              </div>
            </el-col>
          </el-row>
                                                                                                              <el-form-item>
                <el-button v-if="type!='info'" type="primary" @click="onSubmit">提交</el-button>
        <el-button v-if="type!='info'" @click="back()">取消</el-button>
        <el-button v-if="type=='info'" @click="back()">返回</el-button>
      </el-form-item>
    </el-form>
    
    
  </div>
</template>
<script>
// 数字，邮件，手机，url，身份证校验
import { isNumber,isIntNumer,isEmail,isMobile,isURL,checkIdCard } from "@/utils/validate";
export default {
  data() {
    let self = this
    var validateIdCard = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!checkIdCard(value)) {
        callback(new Error("请输入正确的身份证号码"));
      } else {
        callback();
      }
    };
    var validateUrl = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isURL(value)) {
        callback(new Error("请输入正确的URL地址"));
      } else {
        callback();
      }
    };
    var validatePhone = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isMobile(value)) {
        callback(new Error("请输入正确的电话号码"));
      } else {
        callback();
      }
    };
    var validateEmail = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isEmail(value)) {
        callback(new Error("请输入正确的邮箱地址"));
      } else {
        callback();
      }
    };
    var validateNumber = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isNumber(value)) {
        callback(new Error("请输入数字"));
      } else {
        callback();
      }
    };
    var validateIntNumber = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isIntNumer(value)) {
        callback(new Error("请输入整数"));
      } else {
        callback();
      }
    };
    return {
      id: '',
      type: '',
            ruleForm: {
                        yonghuming: '',
                                xingming: '',
                                yajin: '',
                                kouchuliyou: '',
                                kouchuriqi: '',
                      },
                                                                                  rules: {
                  yonghuming: [
                                                                                              ],
                  xingming: [
                                                                                              ],
                  yajin: [
                            { required: true, message: '押金不能为空', trigger: 'blur' },
                                        { validator: validateIntNumber, trigger: 'blur' },
                                                                                  ],
                  kouchuliyou: [
                                                                                              ],
                  kouchuriqi: [
                                                                                              ],
              }
    };
  },
  props: ["parent"],
  computed: {
                                                                  },
  methods: {
        // 下载
    download(file){
      window.open(`${file}`)
    },
    // 初始化
    init(id,type) {
      if (id) {
        this.id = id;
        this.type = type;
      }
      if(this.type=='info'||this.type=='else'){
        this.info(id);
      }else if(this.type=='cross'){
        var obj = this.$storage.getObj('crossObj');
        for (var o in obj){
                    if(o=='yonghuming'){
            this.ruleForm.yonghuming = obj[o];
            continue;
          }
                    if(o=='xingming'){
            this.ruleForm.xingming = obj[o];
            continue;
          }
                    if(o=='yajin'){
            this.ruleForm.yajin = obj[o];
            continue;
          }
                    if(o=='kouchuliyou'){
            this.ruleForm.kouchuliyou = obj[o];
            continue;
          }
                    if(o=='kouchuriqi'){
            this.ruleForm.kouchuriqi = obj[o];
            continue;
          }
                  }
                                                        this.ruleForm.yajin = 0
                                                      }
                                                                                                                        },
                                                // 多级联动参数
                                                              info(id) {
      this.$http({
        url: `yajinkouchu/info/${id}`,
        method: "get"
      }).then(({ data }) => {
        if (data && data.code === 0) {
          this.ruleForm = data.data;
        } else {
          this.$message.error(data.msg);
        }
      });
    },
        // 提交
    onSubmit() {
                  // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                                                                                    var obj = this.$storage.getObj('crossObj');
      var table = this.$storage.getObj('crossTable');
      obj.yajin = obj.yajin - this.ruleForm.yajin
      if(obj.yajin<0){
        this.$message.error("押金不足");
        return
      }
      this.$http({
          url: `${table}/update`,
          method: "post",
          data: obj
        }).then(({ data }) => {});
                                                      this.$refs["ruleForm"].validate(valid => {
        if (valid) {
          this.$http({
            url: `yajinkouchu/${!this.ruleForm.id ? "save" : "update"}`,
            method: "post",
            data: this.ruleForm
          }).then(({ data }) => {
            if (data && data.code === 0) {
              this.$message({
                message: "操作成功",
                type: "success",
                duration: 1500,
                onClose: () => {
                  this.parent.showFlag = true;
                  this.parent.addOrUpdateFlag = false;
                  this.parent.yajinkouchuCrossAddOrUpdateFlag = false;
                  this.parent.search();
                }
              });
            } else {
              this.$message.error(data.msg);
            }
          });
        }
      });
    },
    // 获取uuid
    getUUID () {
      return new Date().getTime();
    },
    // 返回
    back() {
      this.parent.showFlag = true;
      this.parent.addOrUpdateFlag = false;
      this.parent.yajinkouchuCrossAddOrUpdateFlag = false;
    },
                                                                  }
};
</script>
<style lang="scss">
.editor{
  height: 500px;
}
.amap-wrapper {
  width: 100%;
  height: 500px;
}
.search-box {
  position: absolute;
}
</style>
