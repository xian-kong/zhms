<template>
  <div id="app">
    <router-view></router-view>
    <tabbar v-if="show"></tabbar>
  </div>
</template>
<script>
  import tabbar from './components/TabbarIcon';
  import Classify from './components/classify.vue'
  export default {
    components: {
      'tabbar': tabbar,
      'Classify': Classify,
      
    },

    data(){
      return {
        show:true
      }
    },

    watch:{
      $route(e){
      
      // 判断 跳转 路径 2019.11.23
        if(e.name=='Classify'){
          console.log(132)
          this.show=false
        }else{
          this.show=true
        }
      }
    }

    
  }
</script>
<style>
/* body{
  margin:0;
}
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

#nav {
  padding: 30px;
}

#nav a {
  font-weight: bold;
  color: #2c3e50;
}

#nav a.router-link-exact-active {
  color: #42b983;
} */
/* Me.vue样式修改 */
.mint-cell-value.is-link{
   font-size: 14px;
}
.mint-cell-text{
  margin-left: 5px;
}
.mint-cell-title{
    display: flex;
    justify-content: flex-start;
    align-items: center;
   font-size: 14px;
} 
/* Find.vue样式修改 */
.mint-tab-item-label{
  font-size: 14px !important;
}
.postmy .mint-field-core{
  height: 100px;
  padding: 5px 10px;
  border-radius: 10px;
  box-shadow: 0px 0px 8px 0px;
  margin: 20px 10px;
}
.postmy .mint-button--small{
    position: absolute;
    right: 20px;
}
/* Shop.vue样式修改 */
.mint-searchbar-inner .mintui-search{
  display: flex;
  align-items: center;
  /* height: 22px; */
  font-size: 18px !important;
}
.mintui-search:before{
  margin: 0 10px;
}
.mint-search{
  height: 9vh !important;
}
</style>
