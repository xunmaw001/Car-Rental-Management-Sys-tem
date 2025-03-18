
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.html'
}, 
{
	name: '我的收藏',
	url: '../storeup/list.html'
}
]


var indexNav = [

{
	name: '汽车信息',
	url: './pages/qichexinxi/list.html'
}, 

{
	name: '新闻资讯',
	url: './pages/news/list.html'
},
]

var adminurl =  "http://localhost:8080/ssmHP49Z/admin/dist/index.html";

var cartFlag = false

var chatFlag = false


chatFlag = true


var menu = [{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除","押金"],"menu":"用户列表","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"汽车类型列表","menuJump":"列表","tableName":"qicheleixing"}],"menu":"汽车类型管理"},{"child":[{"buttons":["新增","查看","修改","删除","审核"],"menu":"问题上报列表","menuJump":"列表","tableName":"wentishangbao"}],"menu":"问题上报管理"},{"child":[{"buttons":["新增","查看","修改","删除","审核","报表"],"menu":"汽车归还列表","menuJump":"列表","tableName":"qicheguihai"}],"menu":"汽车归还管理"},{"child":[{"buttons":["新增","查看","修改","删除","定车"],"menu":"私人定制列表","menuJump":"列表","tableName":"sirendingzhi"}],"menu":"私人定制管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"lunbotuguanli"},{"buttons":["新增","查看","修改","删除"],"menu":"新闻资讯列表","tableName":"news"},{"buttons":["新增","查看","修改","删除"],"menu":"客服管理","tableName":"kefuguanli"}],"menu":"系统管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"收藏列表","tableName":"storeup"}],"menu":"我的收藏管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"汽车信息列表","menuJump":"列表","tableName":"qichexinxi"}],"menu":"汽车信息管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"汽车租赁列表","menuJump":"列表","tableName":"qichezulin"}],"menu":"汽车租赁管理"},{"child":[{"buttons":["查看","修改","删除","审核","扣押金"],"menu":"押金缴纳列表","menuJump":"列表","tableName":"yajinjiaona"}],"menu":"押金缴纳管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"押金扣除列表","menuJump":"列表","tableName":"yajinkouchu"}],"menu":"押金扣除管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"定制信息列表","menuJump":"列表","tableName":"dingzhixinxi"}],"menu":"定制信息管理"}],"frontMenu":[{"child":[{"buttons":["查看","租赁"],"menu":"汽车信息列表","menuJump":"列表","tableName":"qichexinxi"}],"menu":"汽车信息模块"}],"roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["查看","删除","支付","上报","归还"],"menu":"汽车租赁列表","menuJump":"列表","tableName":"qichezulin"}],"menu":"汽车租赁管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"问题上报列表","menuJump":"列表","tableName":"wentishangbao"}],"menu":"问题上报管理"},{"child":[{"buttons":["查看","支付"],"menu":"押金缴纳列表","menuJump":"列表","tableName":"yajinjiaona"}],"menu":"押金缴纳管理"},{"child":[{"buttons":["查看"],"menu":"押金扣除列表","menuJump":"列表","tableName":"yajinkouchu"}],"menu":"押金扣除管理"},{"child":[{"buttons":["查看","删除"],"menu":"汽车归还列表","menuJump":"列表","tableName":"qicheguihai"}],"menu":"汽车归还管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"私人定制列表","menuJump":"列表","tableName":"sirendingzhi"}],"menu":"私人定制管理"},{"child":[{"buttons":["查看","支付"],"menu":"定制信息列表","menuJump":"列表","tableName":"dingzhixinxi"}],"menu":"定制信息管理"},{"child":[{"buttons":["查看","删除"],"menu":"收藏列表","tableName":"storeup"}],"menu":"我的收藏管理"}],"frontMenu":[{"child":[{"buttons":["查看","租赁"],"menu":"汽车信息列表","menuJump":"列表","tableName":"qichexinxi"}],"menu":"汽车信息模块"}],"roleName":"用户","tableName":"yonghu"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
