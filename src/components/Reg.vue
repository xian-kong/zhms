<template>
  <div class="container">
    <table></table>
    <div class="tit">注册</div>
    <mt-field class="una-input" label="用户名" placeholder="请输入用户名" :state="alertImg1" v-model="uname"></mt-field>
    <mt-field class="pho-input" label="手机号" placeholder="请输入手机号" :state="alertImg2" v-model="phone"></mt-field>
    <mt-field class="code-input" label="密码" placeholder="请输入密码" :state="alertImg3" v-model="upwd"></mt-field>
    <mt-field class="ema-input" label="邮箱" placeholder="请输入邮箱" :state="alertImg4" v-model="email"></mt-field>
    <mt-button class="but" type="primary" size="large" @click="reg">注册</mt-button>
  </div>
</template>
<script>
import axios from "axios"
import {baseURL} from "../assets/js/config.js"
import Qs from "qs"
export default {
  data(){
    return {
      uname:"",
      phone:"",
      upwd:"",
      email:"",
      alertImg1:"",
      alertImg2:"",
      alertImg3:"",
      alertImg4:""
    }
  },
  methods:{
    reg(){
      if(!this.uname){
        this.$messagebox('提示', '用户名不能为空');
      }else if(!this.phone){
        this.$messagebox('提示', '手机号不能为空');
      }else if(!this.upwd){
        this.$messagebox('提示', '密码不能为空');
      }else if(!this.email){
        this.$messagebox('提示', '邮箱不能为空');
      }else if(!(this.alertImg1=="success"&&this.alertImg2=="success"&&this.alertImg3=="success"&&this.alertImg4=="success")){
        this.$messagebox('提示', '注册信息有误');
      }else{
        var url = "reg";
        var obj = {phone:this.phone,upwd:this.upwd};
        this.axios.post(
          url,
          Qs.stringify({
            uname:this.uname,
            upwd:this.upwd,
            phone:this.phone,
            email:this.email
          })      
        )
        .then(result=>{
          console.log(result.data);
          if(result.data.code==200){
            this.$toast("注册成功");
            this.$router.push("/Login");
          }
        })
        .catch(err=>{//失败回调
          console.log(err)
        })
      }  
    }
  },
  watch:{
    uname(){
      var reg=/^[a-zA-Z\u4e00-\u9fa5]{1,10}$/;
      this.alertImg1=reg.test(this.uname)?"success":"error";
    },
    phone(){
      var reg=/^1[3-9]\d{9}$/;
      this.alertImg2=reg.test(this.phone)?"success":"error";
    },
    upwd(){
      var reg=/^\w{6,12}$/;
      this.alertImg3=reg.test(this.upwd)?"success":"error";
    },
    email(){
      var reg = /^(\w)+(\.\w+)*@(\w)+((\.\w{2,3}){1,3})$/;
      this.alertImg4=reg.test(this.email)?"success":"error";
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
    margin: 60px auto;
    text-align: center;
  }
  .mint-cell{
    margin:0 auto;
    width:90%;
  }
  .code-input,.una-input,.pho-input{
    margin-bottom: 20px;
   
  }
  .but{
    margin: 50px auto;
    width:80%;
  }
  
</style>