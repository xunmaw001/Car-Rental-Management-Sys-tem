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
        <el-form-item  v-if="type!='info'"  label="租赁天数" prop="zulintianshu">
          <el-input v-model="ruleForm.zulintianshu" 
              placeholder="租赁天数" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.zulintianshu" label="租赁天数" prop="zulintianshu">
              <el-input v-model="ruleForm.zulintianshu" 
                placeholder="租赁天数" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
        <el-form-item v-if="type!='info'"  label="总价格" prop="zongjiage">
            <el-input v-model="zongjiage"
                placeholder="总价格" readonly></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.zongjiage" label="总价格" prop="zongjiage">
              <el-input v-model="ruleForm.zongjiage" 
                placeholder="总价格" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
        <el-form-item  v-if="type!='info'" label="租赁时间" prop="zulinshijian">
            <el-date-picker
                format="yyyy 年 MM 月 dd 日"
                value-format="yyyy-MM-dd"
                v-model="ruleForm.zulinshijian" 
                type="date"
                placeholder="租赁时间">
            </el-date-picker> 
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.zulinshijian" label="租赁时间" prop="zulinshijian">
              <el-input v-model="ruleForm.zulinshijian" 
                placeholder="租赁时间" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
        <el-form-item  v-if="type!='info'" label="结束时间" prop="jieshushijian">
            <el-date-picker
                format="yyyy 年 MM 月 dd 日"
                value-format="yyyy-MM-dd"
                v-model="ruleForm.jieshushijian" 
                type="date"
                placeholder="结束时间">
            </el-date-picker> 
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.jieshushijian" label="结束时间" prop="jieshushijian">
              <el-input v-model="ruleForm.jieshushijian" 
                placeholder="结束时间" readonly></el-input>
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
                        <el-col :span="12">
        <el-form-item  v-if="type!='info'"  label="手机" prop="shouji">
          <el-input v-model="ruleForm.shouji" 
              placeholder="手机" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.shouji" label="手机" prop="shouji">
              <el-input v-model="ruleForm.shouji" 
                placeholder="手机" readonly></el-input>
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
                        qichebianhao: '',
                                qichemingcheng: '',
                                jiage: '',
                                zulintianshu: '',
                                zongjiage: '',
                                zulinshijian: '',
                                jieshushijian: '',
                                yonghuming: '',
                                xingming: '',
                                shouji: '',
                                ispay: '',
                      },
                                                                                                                                                                      rules: {
                  qichebianhao: [
                                                                                              ],
                  qichemingcheng: [
                                                                                              ],
                  jiage: [
                                                                                              ],
                  zulintianshu: [
                                        { validator: validateIntNumber, trigger: 'blur' },
                                                                                  ],
                  zongjiage: [
                                                                                              ],
                  zulinshijian: [
                                                                                              ],
                  jieshushijian: [
                                                                                              ],
                  yonghuming: [
                                                                                              ],
                  xingming: [
                                                                                              ],
                  shouji: [
                                                                                              ],
                  ispay: [
                                                                                              ],
              }
    };
  },
  props: ["parent"],
  computed: {
                                                            zongjiage:{
                                                                                                                                                                                      get: function () {
        return 1*this.ruleForm.jiage*this.ruleForm.zulintianshu
      }
    },
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
                    if(o=='qichebianhao'){
            this.ruleForm.qichebianhao = obj[o];
            continue;
          }
                    if(o=='qichemingcheng'){
            this.ruleForm.qichemingcheng = obj[o];
            continue;
          }
                    if(o=='jiage'){
            this.ruleForm.jiage = obj[o];
            continue;
          }
                    if(o=='zulintianshu'){
            this.ruleForm.zulintianshu = obj[o];
            continue;
          }
                    if(o=='zongjiage'){
            this.ruleForm.zongjiage = obj[o];
            continue;
          }
                    if(o=='zulinshijian'){
            this.ruleForm.zulinshijian = obj[o];
            continue;
          }
                    if(o=='jieshushijian'){
            this.ruleForm.jieshushijian = obj[o];
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
                    if(o=='shouji'){
            this.ruleForm.shouji = obj[o];
            continue;
          }
                    if(o=='ispay'){
            this.ruleForm.ispay = obj[o];
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
                                                this.ruleForm.shouji = json.shouji
                                                    } else {
          this.$message.error(data.msg);
        }
      });
                                                                                                                                                                                                                                    },
                                                                                                // 多级联动参数
                                                                                                                          info(id) {
      this.$http({
        url: `qichezulin/info/${id}`,
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
              this.ruleForm.zongjiage = this.zongjiage
                              // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                                                                                                                                                                                                                                          this.$refs["ruleForm"].validate(valid => {
        if (valid) {
          this.$http({
            url: `qichezulin/${!this.ruleForm.id ? "save" : "update"}`,
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
                  this.parent.qichezulinCrossAddOrUpdateFlag = false;
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
      this.parent.qichezulinCrossAddOrUpdateFlag = false;
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
