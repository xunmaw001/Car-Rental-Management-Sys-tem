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
        <el-form-item  v-if="type!='info'"  label="标题" prop="biaoti">
          <el-input v-model="ruleForm.biaoti" 
              placeholder="标题" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.biaoti" label="标题" prop="biaoti">
              <el-input v-model="ruleForm.biaoti" 
                placeholder="标题" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
        <el-form-item  v-if="type!='info'"  label="汽车编号" prop="qichebianhao">
          <el-input v-model="ruleForm.qichebianhao" 
              placeholder="汽车编号" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.qichebianhao" label="汽车编号" prop="qichebianhao">
              <el-input v-model="ruleForm.qichebianhao" 
                placeholder="汽车编号" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                                          <el-col :span="12">
        <el-form-item  v-if="type!='info'" label="上报日期" prop="shangbaoriqi">
            <el-date-picker
                format="yyyy 年 MM 月 dd 日"
                value-format="yyyy-MM-dd"
                v-model="ruleForm.shangbaoriqi" 
                type="date"
                placeholder="上报日期">
            </el-date-picker> 
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.shangbaoriqi" label="上报日期" prop="shangbaoriqi">
              <el-input v-model="ruleForm.shangbaoriqi" 
                placeholder="上报日期" readonly></el-input>
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
                                                            </el-row>
                                                                                                                                                                          <el-row>
            <el-col :span="24">
              <el-form-item v-if="type!='info'"  label="汽车问题" prop="qichewenti">
                <editor 
                    style="min-width: 200px; max-width: 600px;"
                    v-model="ruleForm.qichewenti" 
                    class="editor" 
                    action="file/upload">
                </editor>
              </el-form-item>
              <div v-else>
                <el-form-item v-if="ruleForm.qichewenti" label="汽车问题" prop="qichewenti">
                    <span v-html="ruleForm.qichewenti"></span>
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
                        biaoti: '',
                                qichebianhao: '',
                                qichewenti: '',
                                shangbaoriqi: '',
                                yonghuming: '',
                                xingming: '',
                                sfsh: '',
                                shhf: '',
                      },
                                                                                                                            rules: {
                  biaoti: [
                            { required: true, message: '标题不能为空', trigger: 'blur' },
                                                                                              ],
                  qichebianhao: [
                                                                                              ],
                  qichewenti: [
                                                                                              ],
                  shangbaoriqi: [
                                                                                              ],
                  yonghuming: [
                                                                                              ],
                  xingming: [
                                                                                              ],
                  sfsh: [
                                                                                              ],
                  shhf: [
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
                    if(o=='biaoti'){
            this.ruleForm.biaoti = obj[o];
            continue;
          }
                    if(o=='qichebianhao'){
            this.ruleForm.qichebianhao = obj[o];
            continue;
          }
                    if(o=='qichewenti'){
            this.ruleForm.qichewenti = obj[o];
            continue;
          }
                    if(o=='shangbaoriqi'){
            this.ruleForm.shangbaoriqi = obj[o];
            continue;
          }
                    if(o=='yonghuming'){
            this.ruleForm.yonghuming = obj[o];
            continue;
          }
                    if(o=='xingming'){
            this.ruleForm.xingming = obj[o];
            continue;
          }
                    if(o=='sfsh'){
            this.ruleForm.sfsh = obj[o];
            continue;
          }
                    if(o=='shhf'){
            this.ruleForm.shhf = obj[o];
            continue;
          }
                  }
                                                                                                                                              }
            // 获取用户信息
      this.$http({
        url: `${this.$storage.get('sessionTable')}/session`,
        method: "get"
      }).then(({ data }) => {
        if (data && data.code === 0) {
          var json = data.data;
                                                                                                                            this.ruleForm.yonghuming = json.yonghuming
                                                this.ruleForm.xingming = json.xingming
                                                                          } else {
          this.$message.error(data.msg);
        }
      });
                                                                                                                                                                              },
                                                                        // 多级联动参数
                                                                                            info(id) {
      this.$http({
        url: `wentishangbao/info/${id}`,
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
                              // ${column.compare}
                              // ${column.compare}
                                                                                                                                                                                    this.$refs["ruleForm"].validate(valid => {
        if (valid) {
          this.$http({
            url: `wentishangbao/${!this.ruleForm.id ? "save" : "update"}`,
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
                  this.parent.wentishangbaoCrossAddOrUpdateFlag = false;
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
      this.parent.wentishangbaoCrossAddOrUpdateFlag = false;
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
