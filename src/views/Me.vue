<template>
  <div>
    <mt-tab-container>
      <mt-tab-container-item>
        <div class="bg"></div>
        <div class="top">
          <div class="user_row">
            <img class="user" src="../assets/user_boy.png" alt="">
            <div class="user">
              <div class="username">
                <span @click="toLogin">登录/</span>
                <span @click="toReg">注册</span>
              </div>
              <div class="vip">
                <img class="vip-img" src="../assets/vip.png" alt="">
                <span>金卡会员</span>
                <span class="jump_to_vip">></span>
              </div>
            </div>
          </div>
          <div class="money_row">
            <div class="score">
              <div class="num">666</div>
              <div class="word">我的积分</div>
            </div>
            <div class="discount_card">
              <div class="num">4</div>
              <div class="word">优惠券</div>
            </div>
            <div class="leftmoney">  
              <div class="num">666</div>
              <div class="word">储值余额</div>
            </div>
          </div>
          <div class="product_row">
            <div>
              <img src="../assets/daifukuan.png" alt="">
              <p>待付款</p>
            </div>
            <div>
              <img src="../assets/daifahuo.png" alt="">
              <p>待发货</p>
            </div>
            <div>
              <img src="../assets/yifahuo.png" alt="">
              <p>已发货</p>
            </div>
            <div>
              <img src="../assets/dpj.png" alt="">
              <p>待评价</p>
            </div>
          </div>
        </div>
        <div class="cel_row">
          <mt-cell class="cel" title="会员" to="" is-link>
            <span>Lv.2</span>
            <img slot="icon" src="../assets/huiyuan.png" width="24" height="24">
          </mt-cell>
          <mt-cell class="cel" title="动态" to="" is-link>
            <span></span>
            <img slot="icon" src="../assets/dianzan.png" width="24" height="24">
          </mt-cell>
          <mt-cell class="cel" title="钱包" to="" is-link>
            <span></span>
            <img slot="icon" src="../assets/qianbao.png" width="24" height="24">
          </mt-cell>
          <mt-cell class="cel" title="找好友" to="" is-link>
            <span></span>
            <img slot="icon" src="../assets/zhaohaoyou.png" width="24" height="24">
          </mt-cell>
        </div>
      </mt-tab-container-item>  
    </mt-tab-container> 
  </div>
</template>
<script>
export default {
  data(){
    return {
      
    }
  },
  methods:{
    toLogin(){
      this.$router.push("/Login");
    },
    toReg(){
      this.$router.push("/Reg");
    }
  }
}
</script>
<style scoped>
  div.cel_row{
     width: 90%;
    margin: 0 auto;
    font-size: 14px;
  }
  div.cel_row .cel{
    padding: 5px 0;
    border-top: 1px solid #F5F2F6;
     font-size: 14px;
  }
  *{
    margin: 0;
    padding: 0;
  }
  .bg{
    width: 100%;
    height: 174px;
    background-image: url(../assets/me_bg.jpg);
    background-size: 107%;
    background-position: -13px -81px;
  }
  div.top{
    width: 90%;
    margin: 0 auto;
    border-radius: 14px;
    background-color: #fff;
    margin-top: -62px;
    /* justify-content: space-around; */
  }
  div.user_row{
    width: 100%;
    border-top-left-radius: 14px;
    border-top-right-radius: 14px;
    display: flex;
    align-items: center;
    /* background-color: rgba(0,0,0,0.1); */
  }
  div.username{
    display: flex;
    font-weight: 600;
    font-size: 25px;
  }
  img.user{
    width: 70px;
    height: 70px;
    border-radius: 50%;
    margin: 20px;
     box-shadow: 0 0 5px 2px;
  }
  div.vip{
    display: flex;
    align-items: center;
  }
  img.vip-img{
    width: 20px;
  }
  div.vip span{
    font-size: 12px;
    margin: 0 5px;
  }
  div.money_row,
  div.product_row{
    display: flex;
    justify-content: space-around;
    align-items: center;
    padding: 10px 0;
    border-top: 1px solid #F5F2F6;
  }
  div.money_row .num{
    font-weight: 600;
    text-align: center;
  }
  div.money_row .word,
  div.product_row p{
    font-size: 12px;
  }
  div.product_row>div{
    text-align: center;
  }
  div.product_row img{
    width: 30px;
  }
</style>