import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import MintUI from "mint-ui"
import "mint-ui/lib/style.css"
// import "./font/iconfont.css"
import Vant from 'vant';
import 'vant/lib/index.css';
import "mint-ui/lib/style.css"
import "../public/css/reset.css"//引入全局css样式
import { Loading } from 'vant';

Vue.use(Loading);
//引入第三方 axios
import axios from "axios"
//配置访问服务器基础路径
axios.defaults.baseURL="http://127.0.0.1:5050/"
Vue.use(MintUI);
Vue.use(Vant);
Vue.config.productionTip = false
//保存session 信息
//每次ajax访问服务器将session id
//发送服务器验证使用 
axios.defaults.withCredentials=true
//将axios注册Vue实例中 
//  注意顺序不能配置在vue对象后面
Vue.prototype.axios = axios;

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
