import Vue from 'vue'
import VueRouter from 'vue-router'
import Reg from '../components/Reg.vue'
import Login from '../components/Login.vue'
import Me from '../views/Me.vue'
import Find from '../views/Find.vue'
import Shop from '../views/Shop.vue'
import Index from "../views/index.vue"
import Cookbook from "../components/cookbook.vue"
import Classify from "../components/classify.vue"

Vue.use(VueRouter)

const routes = [
  {path:"/Index",component:Index,name:'index'},
  {path:"/Cookbook",component:Cookbook,name:'Cookbook'},
  {path:"/Classify",component:Classify,name:'Classify'},
  {path:'/Shop',component:Shop},
  {path:'/Find',component:Find},
  {path:'/Me',component:Me},
  {path:'/Reg',component:Reg},
  {path:'/Login',component:Login}
]

const router = new VueRouter({
  routes
})

export default router
