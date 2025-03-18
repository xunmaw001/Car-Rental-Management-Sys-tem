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
        <el-form-item  v-if="type!='info'"  label="汽车名称" prop="qichemingcheng">
          <el-input v-model="ruleForm.qichemingcheng" 
              placeholder="汽车名称" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.qichemingcheng" label="汽车名称" prop="qichemingcheng">
              <el-input v-model="ruleForm.qichemingcheng" 
                placeholder="汽车名称" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
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
        <el-form-item  v-if="type!='info'"  label="价格" prop="jiage">
          <el-input v-model="ruleForm.jiage" 
              placeholder="价格" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.jiage" label="价格" prop="jiage">
              <el-input v-model="ruleForm.jiage" 
                placeholder="价格" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
        <el-form-item  v-if="type!='info'" label="取车日期" prop="qucheriqi">
            <el-date-picker
                format="yyyy 年 MM 月 dd 日"
                value-format="yyyy-MM-dd"
                v-model="ruleForm.qucheriqi" 
                type="date"
                placeholder="取车日期">
            </el-date-picker> 
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.qucheriqi" label="取车日期" prop="qucheriqi">
              <el-input v-model="ruleForm.qucheriqi" 
                placeholder="取车日期" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                                          </el-row>
                                                                                                                                              <el-row>
            <el-col :span="24">
              <el-form-item v-if="type!='info'"  label="定制状况" prop="dingzhizhuangkuang">
                <editor 
                    style="min-width: 200px; max-width: 600px;"
                    v-model="ruleForm.dingzhizhuangkuang" 
                    class="editor" 
                    action="file/upload">
                </editor>
              </el-form-item>
              <div v-else>
                <el-form-item v-if="ruleForm.dingzhizhuangkuang" label="定制状况" prop="dingzhizhuangkuang">
                    <span v-html="ruleForm.dingzhizhuangkuang"></span>
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
                        qichemingcheng: '',
                                yonghuming: '',
                                dingzhizhuangkuang: '',
                                jiage: '',
                                qucheriqi: '',
                                ispay: '',
                      },
                                                                                                rules: {
                  qichemingcheng: [
                                                                                              ],
                  yonghuming: [
                                                                                              ],
                  dingzhizhuangkuang: [
                                                                                              ],
                  jiage: [
                            { required: true, message: '价格不能为空', trigger: 'blur' },
                                        { validator: validateIntNumber, trigger: 'blur' },
                                                                                  ],
                  qucheriqi: [
                                                                                              ],
                  ispay: [
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
                    if(o=='qichemingcheng'){
            this.ruleForm.qichemingcheng = obj[o];
            continue;
          }
                    if(o=='yonghuming'){
            this.ruleForm.yonghuming = obj[o];
            continue;
          }
                    if(o=='dingzhizhuangkuang'){
            this.ruleForm.dingzhizhuangkuang = obj[o];
            continue;
          }
                    if(o=='jiage'){
            this.ruleForm.jiage = obj[o];
            continue;
          }
                    if(o=='qucheriqi'){
            this.ruleForm.qucheriqi = obj[o];
            continue;
          }
                    if(o=='ispay'){
            this.ruleForm.ispay = obj[o];
            continue;
          }
                  }
                                                                                                              }
                                                                                                                                          },
                                                        // 多级联动参数
                                                                        info(id) {
      this.$http({
        url: `dingzhixinxi/info/${id}`,
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
                              // ${column.compare}
                                                                                                                                                this.$refs["ruleForm"].validate(valid => {
        if (valid) {
          this.$http({
            url: `dingzhixinxi/${!this.ruleForm.id ? "save" : "update"}`,
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
                  this.parent.dingzhixinxiCrossAddOrUpdateFlag = false;
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
      this.parent.dingzhixinxiCrossAddOrUpdateFlag = false;
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
