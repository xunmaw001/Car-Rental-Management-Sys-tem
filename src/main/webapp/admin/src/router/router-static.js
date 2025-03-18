import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
import adminexam from '@/views/modules/shijuanliebiao/exam'
    import news from '@/views/modules/news/list'
    import qicheguihai from '@/views/modules/qicheguihai/list'
    import lunbotuguanli from '@/views/modules/lunbotuguanli/list'
    import kefuguanli from '@/views/modules/kefuguanli/list'
    import yajinjiaona from '@/views/modules/yajinjiaona/list'
    import dingzhixinxi from '@/views/modules/dingzhixinxi/list'
    import storeup from '@/views/modules/storeup/list'
    import qicheleixing from '@/views/modules/qicheleixing/list'
    import qichezulin from '@/views/modules/qichezulin/list'
    import wentishangbao from '@/views/modules/wentishangbao/list'
    import sirendingzhi from '@/views/modules/sirendingzhi/list'
    import yajinkouchu from '@/views/modules/yajinkouchu/list'
    import yonghu from '@/views/modules/yonghu/list'
    import qichexinxi from '@/views/modules/qichexinxi/list'

//2.配置路由   注意：名字
const routes = [
    {
        path: '/index', name:'index', component: Index, children: [{
            // 这里不设置值，是把main作为默认页面
            path: '/',
            name: 'home',
            component: Home
        },{
            path: '/updatePassword',
            name: 'updatePassword',
            component: UpdatePassword
        } ,{
            path: '/pay',
            name: 'pay',
            component: pay
        } ,{
            path: '/center',
            name: 'center',
            component: center
        } 
                    ,{
                path: '/news',
                name: 'news',
                component: news
            } 
                    ,{
                path: '/qicheguihai',
                name: 'qicheguihai',
                component: qicheguihai
            } 
                    ,{
                path: '/lunbotuguanli',
                name: 'lunbotuguanli',
                component: lunbotuguanli
            } 
                    ,{
                path: '/kefuguanli',
                name: 'kefuguanli',
                component: kefuguanli
            } 
                    ,{
                path: '/yajinjiaona',
                name: 'yajinjiaona',
                component: yajinjiaona
            } 
                    ,{
                path: '/dingzhixinxi',
                name: 'dingzhixinxi',
                component: dingzhixinxi
            } 
                    ,{
                path: '/storeup',
                name: 'storeup',
                component: storeup
            } 
                    ,{
                path: '/qicheleixing',
                name: 'qicheleixing',
                component: qicheleixing
            } 
                    ,{
                path: '/qichezulin',
                name: 'qichezulin',
                component: qichezulin
            } 
                    ,{
                path: '/wentishangbao',
                name: 'wentishangbao',
                component: wentishangbao
            } 
                    ,{
                path: '/sirendingzhi',
                name: 'sirendingzhi',
                component: sirendingzhi
            } 
                    ,{
                path: '/yajinkouchu',
                name: 'yajinkouchu',
                component: yajinkouchu
            } 
                    ,{
                path: '/yonghu',
                name: 'yonghu',
                component: yonghu
            } 
                    ,{
                path: '/qichexinxi',
                name: 'qichexinxi',
                component: qichexinxi
            } 
                ]
    },
    { path: '/adminexam', name: 'adminexam', component: adminexam },
    { path: '/login', name:'login', component: Login },
    { path: '/register', name:'register', component: register },
    { path: '/', redirect: '/index/' },      /*默认跳转路由*/
    { path: '*', component: NotFound }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
    mode: 'hash',   /*hash模式改为history*/
    routes // （缩写）相当于 routes: routes
})

export default router;

