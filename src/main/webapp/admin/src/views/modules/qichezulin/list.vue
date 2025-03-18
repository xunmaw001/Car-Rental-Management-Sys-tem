<template>
  <div class="main-content">
    <!-- 列表页 -->
    <div v-if="showFlag">
      <el-form :inline="true" :model="searchForm" class="form-content">
                                            <el-form-item label="汽车编号">
                <el-input v-model="searchForm.qichebianhao" 
                    placeholder="汽车编号" clearable></el-input>
              </el-form-item>
                                                                  <el-form-item label="汽车名称">
                <el-input v-model="searchForm.qichemingcheng" 
                    placeholder="汽车名称" clearable></el-input>
              </el-form-item>
                                                                                                                                                                                                        <el-form-item>
          <el-button round @click="search()">查询</el-button>
          <el-button
            v-if="isAuth('qichezulin','新增')"
            type="primary"
            @click="addOrUpdateHandler()"
            round
          >新增</el-button>
          <el-button
            v-if="isAuth('qichezulin','删除')"
            :disabled="dataListSelections.length <= 0"
            type="danger"
            @click="deleteHandler()"
            round
          >删除</el-button>
                  </el-form-item>
      </el-form>
      <div class="table-content">
        <el-table
            v-if="isAuth('qichezulin','查看')"
            :data="dataList"
            border
            v-loading="dataListLoading"
            @selection-change="selectionChangeHandler"
            style="width: 100%;">
            <el-table-column
                type="selection"
                header-align="center"
                align="center"
                width="50">
            </el-table-column>
                                            <el-table-column
                    prop="qichebianhao"
                    header-align="center"
                    align="center"
                    sortable
                    label="汽车编号">
                    <template slot-scope="scope">
                      {{scope.row.qichebianhao}}
                    </template>
                </el-table-column>
                                                            <el-table-column
                    prop="qichemingcheng"
                    header-align="center"
                    align="center"
                    sortable
                    label="汽车名称">
                    <template slot-scope="scope">
                      {{scope.row.qichemingcheng}}
                    </template>
                </el-table-column>
                                                            <el-table-column
                    prop="jiage"
                    header-align="center"
                    align="center"
                    sortable
                    label="价格">
                    <template slot-scope="scope">
                      {{scope.row.jiage}}
                    </template>
                </el-table-column>
                                                            <el-table-column
                    prop="zulintianshu"
                    header-align="center"
                    align="center"
                    sortable
                    label="租赁天数">
                    <template slot-scope="scope">
                      {{scope.row.zulintianshu}}
                    </template>
                </el-table-column>
                                                            <el-table-column
                    prop="zongjiage"
                    header-align="center"
                    align="center"
                    sortable
                    label="总价格">
                    <template slot-scope="scope">
                      {{scope.row.zongjiage}}
                    </template>
                </el-table-column>
                                                            <el-table-column
                    prop="zulinshijian"
                    header-align="center"
                    align="center"
                    sortable
                    label="租赁时间">
                    <template slot-scope="scope">
                      {{scope.row.zulinshijian}}
                    </template>
                </el-table-column>
                                                            <el-table-column
                    prop="jieshushijian"
                    header-align="center"
                    align="center"
                    sortable
                    label="结束时间">
                    <template slot-scope="scope">
                      {{scope.row.jieshushijian}}
                    </template>
                </el-table-column>
                                                            <el-table-column
                    prop="yonghuming"
                    header-align="center"
                    align="center"
                    sortable
                    label="用户名">
                    <template slot-scope="scope">
                      {{scope.row.yonghuming}}
                    </template>
                </el-table-column>
                                                            <el-table-column
                    prop="xingming"
                    header-align="center"
                    align="center"
                    sortable
                    label="姓名">
                    <template slot-scope="scope">
                      {{scope.row.xingming}}
                    </template>
                </el-table-column>
                                                            <el-table-column
                    prop="shouji"
                    header-align="center"
                    align="center"
                    sortable
                    label="手机">
                    <template slot-scope="scope">
                      {{scope.row.shouji}}
                    </template>
                </el-table-column>
                                                            <el-table-column
                  prop="ispay"
                  header-align="center"
                  align="center"
                  sortable
                  label="是否支付">
                  <template slot-scope="scope">
                    <span style="margin-right:10px">{{scope.row.ispay=='已支付'?'已支付':'未支付'}}</span>
                    <el-button v-if="scope.row.ispay!='已支付' && isAuth('qichezulin','支付') " type="text" icon="el-icon-edit" size="small" @click="payHandler(scope.row)">支付</el-button>
                  </template>
                </el-table-column>
                                                    <el-table-column
                header-align="center"
                align="center"
                label="操作">
                <template slot-scope="scope">
                                                                <el-button v-if="isAuth('qichezulin','上报')" type="text" icon="el-icon-edit" size="small" @click="wentishangbaoCrossAddOrUpdateHandler(scope.row,'cross')">上报</el-button>
                                                <el-button v-if="isAuth('qichezulin','归还')" type="text" icon="el-icon-edit" size="small" @click="qicheguihaiCrossAddOrUpdateHandler(scope.row,'cross')">归还</el-button>
                                                                <el-button v-if="isAuth('qichezulin','修改')" type="text" icon="el-icon-edit" size="small" @click="addOrUpdateHandler(scope.row.id)">修改</el-button>
                <el-button v-if="isAuth('qichezulin','删除')" type="text" icon="el-icon-delete" size="small" @click="deleteHandler(scope.row.id)">删除</el-button>
                </template>
            </el-table-column>
        </el-table>
                                                                                                                                                                                                <el-pagination
          @size-change="sizeChangeHandle"
          @current-change="currentChangeHandle"
          :current-page="pageIndex"
          :page-sizes="[10, 20, 50, 100]"
          :page-size="pageSize"
          :total="totalPage"
          layout="total, sizes, prev, pager, next, jumper"
          class="pagination-content"
        ></el-pagination>
      </div>
    </div>
    <!-- 添加/修改页面  将父组件的search方法传递给子组件-->
    <add-or-update v-if="addOrUpdateFlag" :parent="this" ref="addOrUpdate"></add-or-update>

            <wentishangbao-cross-add-or-update v-if="wentishangbaoCrossAddOrUpdateFlag" :parent="this" ref="wentishangbaoCrossaddOrUpdate"></wentishangbao-cross-add-or-update>
        <qicheguihai-cross-add-or-update v-if="qicheguihaiCrossAddOrUpdateFlag" :parent="this" ref="qicheguihaiCrossaddOrUpdate"></qicheguihai-cross-add-or-update>
        
    
      </div>
</template>
<script>
import AddOrUpdate from "./add-or-update";
import wentishangbaoCrossAddOrUpdate from "../wentishangbao/add-or-update";
import qicheguihaiCrossAddOrUpdate from "../qicheguihai/add-or-update";
export default {
  data() {
    return {
                                                                                                                                                                                                                                          searchForm: {
        key: ""
      },
      dataList: [],
      pageIndex: 1,
      pageSize: 10,
      totalPage: 0,
      dataListLoading: false,
      dataListSelections: [],
      showFlag: true,
      sfshVisiable: false,
      shForm: {},
      chartVisiable: false,
      addOrUpdateFlag:false,
                  wentishangbaoCrossAddOrUpdateFlag: false,
            qicheguihaiCrossAddOrUpdateFlag: false,
                };
  },
  mounted() {
    this.init();
    this.getDataList();
  },
  filters: {
    htmlfilter: function (val) {
      return val.replace(/<[^>]*>/g).replace(/undefined/g,'');
    }
  },
  components: {
    AddOrUpdate,
            wentishangbaoCrossAddOrUpdate,
        qicheguihaiCrossAddOrUpdate,
          },
  methods: {
            wentishangbaoCrossAddOrUpdateHandler(row,type){
      this.showFlag = false;
      this.addOrUpdateFlag = false;
      this.wentishangbaoCrossAddOrUpdateFlag = true;
      this.$storage.set('crossObj',row);
      this.$storage.set('crossTable','qichezulin');
      this.$nextTick(() => {
        this.$refs.wentishangbaoCrossaddOrUpdate.init(row.id,type);
      });
    },
        qicheguihaiCrossAddOrUpdateHandler(row,type){
      this.showFlag = false;
      this.addOrUpdateFlag = false;
      this.qicheguihaiCrossAddOrUpdateFlag = true;
      this.$storage.set('crossObj',row);
      this.$storage.set('crossTable','qichezulin');
      this.$nextTick(() => {
        this.$refs.qicheguihaiCrossaddOrUpdate.init(row.id,type);
      });
    },
                payHandler(row){
      this.$storage.set('paytable','qichezulin');
      this.$storage.set('payObject',row);
      this.$router.push('pay');
    },
            init () {
                                                                                                                                                                                                                                                                                  let urljieshushijian = 'qichezulin/remind/jieshushijian/2?1=1';
                      urljieshushijian+=`&remindend=0`,
                                urljieshushijian+=`&remindstart=`,
                    this.$http({
            url: urljieshushijian,
            method: "get",
          }).then(({ data }) => {
            if (data && data.code == 0 && data.count>0 ) {
              this.$alert(`结束时间有${data.count}条数据到期`)
            }
          });
                                                                          },
    search() {
      this.pageIndex = 1;
      this.getDataList();
    },
    // 获取数据列表
    getDataList() {
      this.dataListLoading = true;
      let params = {
        page: this.pageIndex,
        limit: this.pageSize,
        sort: 'id',
      }
                                          if(this.searchForm.qichebianhao!='' && this.searchForm.qichebianhao!=undefined){
            params['qichebianhao'] = '%' + this.searchForm.qichebianhao + '%'
          }
                                                            if(this.searchForm.qichemingcheng!='' && this.searchForm.qichemingcheng!=undefined){
            params['qichemingcheng'] = '%' + this.searchForm.qichemingcheng + '%'
          }
                                                                                                                                                                                                                                    this.$http({
        url: "qichezulin/page",
        method: "get",
        params: params
      }).then(({ data }) => {
        if (data && data.code === 0) {
          this.dataList = data.data.list;
          this.totalPage = data.data.total;
        } else {
          this.dataList = [];
          this.totalPage = 0;
        }
        this.dataListLoading = false;
      });
    },
    // 每页数
    sizeChangeHandle(val) {
      this.pageSize = val;
      this.pageIndex = 1;
      this.getDataList();
    },
    // 当前页
    currentChangeHandle(val) {
      this.pageIndex = val;
      this.getDataList();
    },
    // 多选
    selectionChangeHandler(val) {
      this.dataListSelections = val;
    },
    // 添加/修改
    addOrUpdateHandler(id,type) {
      this.showFlag = false;
      this.addOrUpdateFlag = true;
      this.crossAddOrUpdateFlag = false;
      if(type!='info'){
        type = 'else';
      }
      this.$nextTick(() => {
        this.$refs.addOrUpdate.init(id,type);
      });
    },
        // 下载
    download(file){
      window.open(`${file}`)
    },
    // 删除
    deleteHandler(id) {
      var ids = id
        ? [Number(id)]
        : this.dataListSelections.map(item => {
            return Number(item.id);
          });
      this.$confirm(`确定进行[${id ? "删除" : "批量删除"}]操作?`, "提示", {
        confirmButtonText: "确定",
        cancelButtonText: "取消",
        type: "warning"
      }).then(() => {
        this.$http({
          url: "qichezulin/delete",
          method: "post",
          data: ids
        }).then(({ data }) => {
          if (data && data.code === 0) {
            this.$message({
              message: "操作成功",
              type: "success",
              duration: 1500,
              onClose: () => {
                this.search();
              }
            });
          } else {
            this.$message.error(data.msg);
          }
        });
      });
    }
  }
};
</script>
<style lang="scss" scoped>
</style>
