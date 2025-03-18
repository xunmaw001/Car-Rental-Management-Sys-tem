const base = {
    get() {
                return {
            url : "http://localhost:8080/ssmHP49Z/",
            name: "ssmHP49Z",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssmHP49Z/front/index.html'
        }
            },
    getProjectName(){
        return {
            projectName: "汽车租赁管理系统"
        } 
    }
}
export default base