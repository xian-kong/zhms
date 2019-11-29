<template>
  <div class="container">
    <table></table>
    <div class="tit">登 录</div>
    <mt-field class="pho-input" label="手机号" placeholder="请输入手机号" :state="alertImg1" v-model="phone"></mt-field>
    <mt-field class="code-input" label="密码" placeholder="请输入密码" :state="alertImg2" v-model="upwd"></mt-field>
    <mt-button class="but" type="primary" size="large" @click="check">登录</mt-button>
  </div>
</template>
<script>
import axios from "axios"
import {baseURL} from "../assets/js/config.js"
import Qs from "qs"
export default {
  data(){
    return {
      phone:"",
      upwd:"",
      alertImg1:"",
      alertImg2:""
    }
  },
  methods:{
    check(){
      if(!this.phone){
        this.$messagebox('提示', '手机号不能为空');
      }else if(!this.upwd){
        this.$messagebox('提示', '密码不能为空');
      }else if(!(this.alertImg1=="success"&&this.alertImg2=="success")){
        this.$messagebox('提示', '手机号或密码有误');
      }else{
            //5:发送ajax请求完成登录验证
          //3306  5050
        var url = "login";
        var obj = {phone:this.phone,upwd:this.upwd};
        this.axios.get(url,{params:obj}).then(res=>{//成功回调
          console.log(res.data.code)
          if(res.data.code==1){
            this.$toast("登录成功");
            //1 跳转 /Me 个人中心
            this.$router.push("/Me")
          }else{
            this.$toast("手机号或密码有误");
          }
          //-1     提示框
        })
        .catch(err=>{//失败回调
          console.log(err)
        })
          //6:登录成功 跳转商品列表
          //7:登录失败 提示框 
      }
    }
  },
  watch:{
    phone(){
      var reg=/^1[3-9]\d{9}$/;
      this.alertImg1=reg.test(this.phone)?"success":"error";
    },
    upwd(){
      var reg=/^\w{6,12}$/;
      this.alertImg2=reg.test(this.upwd)?"success":"error";
    }
  }
}
</script>
<style scoped>
  div.container{
    height: 800px;
    background-color: rgba(0,0,0,0.7);
  }
  .container>div.tit{
    color: #fff;
    font-size: 30px;
    margin: 80px auto;
    text-align: center;
  }
  .mint-cell{
    margin:0 auto;
    width:90%;
  }
  .pho-input,.pho-check,.code-input{
    margin-bottom: 20px;
  }
  .pho-check,.code-check{
    font-size: 14px;
    color: #fff;
  }
  .but{
    margin: 50px auto;
    width:80%;
  }
  
</style>