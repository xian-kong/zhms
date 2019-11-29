<template>

  <div>
    <!-- <mt-header fixed title="健康点餐"></mt-header> -->
   
    <mt-search v-model="value" cancel-text="取消" placeholder="客官想吃点啥" autofocus>
    </mt-search>
    <mt-navbar class="navrow" v-model="selected">
      <mt-tab-item id="cai">菜</mt-tab-item>
      <mt-tab-item id="zhushi">主食</mt-tab-item>
      <mt-tab-item id="zhou">汤粥</mt-tab-item>
    </mt-navbar>
    <mt-tab-container v-model="selected">
      <mt-tab-container-item id="cai">
        <div class="lis">
          <div class="left">
            <img src="../assets/cai1.jpg" alt="">
            <div class="info">
              <div class="tit">鱼香肉丝</div>
              <div class="subtit">主料:猪肉 青椒 胡萝卜</div>
              <div class="price">¥{{price1}}</div>
            </div>
          </div>
          <div class="right">
            <button class="but left" @click="doit1(-1)" v-show="show1"><img src="../assets/jian.png" alt=""></button>
            <span>{{n1}}</span>
            <button class="but right" @click="doit1(+1)"><img src="../assets/jia.png" alt=""></button>
          </div>
        </div>
        <div class="lis">
          <div class="left">
            <img src="../assets/cai2.jpg" alt="">
            <div class="info">
              <div class="tit">宫保鸡丁</div>
              <div class="subtit">主料:鸡肉 花生米 黄瓜 辣椒</div>
              <div class="price">¥{{price2}}</div>
            </div>
          </div>
          <div class="right">
            <button class="but left" @click="doit2(-1)" v-show="show2"><img src="../assets/jian.png" alt=""></button>
            <span>{{n2}}</span>
            <button class="but right" @click="doit2(+1)"><img src="../assets/jia.png" alt=""></button>
          </div>
        </div> 


    


      </mt-tab-container-item>
      <mt-tab-container-item id="zhushi">
        <div class="lis">
          <div class="left">
            <img src="../assets/mantou.jpg" alt="">
            <div class="info">
              <div class="tit">鱼香肉丝</div>
              <div class="subtit">主料:猪肉 青椒 胡萝卜</div>
              <div class="price">¥{{price3}}</div>
            </div>
          </div>
          <div class="right">
            <button class="but left" @click="doit3(-1)" v-show="show3"><img src="../assets/jian.png" alt=""></button>
            <span>{{n3}}</span>
            <button class="but right" @click="doit3(+1)"><img src="../assets/jia.png" alt=""></button>
          </div>
        </div>
        <div class="lis">
          <div class="left">
            <img src="../assets/mifan.jpg" alt="">
            <div class="info">
              <div class="tit">米饭</div>
              <div class="subtit">主料:大米</div>
              <div class="price">¥{{price4}}</div>
            </div>
          </div>
          <div class="right">
            <button class="but left" @click="doit4(-1)" v-show="show4"><img src="../assets/jian.png" alt=""></button>
            <span>{{n4}}</span>
            <button class="but right" @click="doit4(+1)"><img src="../assets/jia.png" alt=""></button>
          </div>
        </div> 
      </mt-tab-container-item>
      <mt-tab-container-item id="zhou">
        <div class="lis">
          <div class="left">
            <img src="../assets/babaozhou.jpg" alt="">
            <div class="info">
              <div class="tit">八宝粥</div>
              <div class="subtit">主料:黑米 红枣 花生 红豆</div>
              <div class="price">¥{{price5}}</div>
            </div>
          </div>
          <div class="right">
            <button class="but left" @click="doit5(-1)" v-show="show5"><img src="../assets/jian.png" alt=""></button>
            <span>{{n5}}</span>
            <button class="but right" @click="doit5(+1)"><img src="../assets/jia.png" alt=""></button>
          </div>
        </div>
        <div class="lis">
          <div class="left">
            <img src="../assets/xiaomizhou.jpg" alt="">
            <div class="info">
              <div class="tit">小米粥</div>
              <div class="subtit">主料:小米</div>
              <div class="price">¥{{price6}}</div>
            </div>
          </div>
          <div class="right">
            <button class="but left" @click="doit6(-1)" v-show="show6"><img src="../assets/jian.png" alt=""></button>
            <span>{{n6}}</span>
            <button class="but right" @click="doit6(+1)"><img src="../assets/jia.png" alt=""></button>
          </div>
        </div> 
      </mt-tab-container-item>
    </mt-tab-container>
    <!-- 价格结算栏 -->
    <div class="pricerow">
      <span class="span1">价格结算:</span>
      <span class="span2">¥ {{dosum}}</span>
      <mt-button class="span3" size="small" type="primary">立即购买</mt-button>
    </div>
  
  </div>

</template>
<script>
export default {
  data(){
    return {
      selected:"cai",
      value:"",
      n1:0,
      n2:0,
      n3:0,
      n4:0,
      n5:0,
      n6:0,
      sum1:0,
      sum2:0,
      sum3:0,
      sum4:0,
      sum5:0,
      sum6:0,
      show1:false,
      show2:false,
      show3:false,
      show4:false,
      show5:false,
      show6:false,
      price1:"15.00",
      price2:"14.00",
      price3:"1.00",
      price4:"2.00",
      price5:"4.00",
      price6:"3.00"
    }
  },
  methods:{
    doit1(i){
      this.n1+=i;
      if(this.n1>0){
        this.show1=true; 
      }else{
        this.show1=false;
      }
    },
    doit2(i){
      this.n2+=i;
      if(this.n2>0){
        this.show2=true; 
      }else{
        this.show2=false;
      }
    },
     doit3(i){
      this.n3+=i;
      if(this.n3>0){
        this.show3=true; 
      }else{
        this.show3=false;
      }
    },
     doit4(i){
      this.n4+=i;
      if(this.n4>0){
        this.show4=true; 
      }else{
        this.show4=false;
      }
    },
     doit5(i){
      this.n5+=i;
      if(this.n5>0){
        this.show5=true; 
      }else{
        this.show5=false;
      }
    },
     doit6(i){
      this.n6+=i;
      if(this.n6>0){
        this.show6=true; 
      }else{
        this.show6=false;
      }
    }
  },
  computed:{
    dosum(){
      var sum1=this.n1*this.price1;
      var sum2=this.n2*this.price2;
      var sum3=this.n3*this.price3;
      var sum4=this.n4*this.price4;
      var sum5=this.n5*this.price5;
      var sum6=this.n6*this.price6;
      var sum=( sum1+sum2+sum3+sum4+sum5+sum6 ).toFixed(2);
      return sum;
    }
  }
}
</script>
<style scoped>
  .navrow{
    margin-bottom: 10px;
  }
  div.lis{
    width: 90%;
    margin: 0 auto;
    display: flex;
    align-items: center;
    justify-content: space-between;
    border-top: 1px solid #F5F2F6;
    padding: 10px 0;
  }
  div.left{
    width: 70%;
    display: flex;
    align-items: center;
  }
  div.right{
    width: 30%;
  }
  div.left img{
    width:50%;
    height: 80px;
    margin-right: 10px;
    border-radius: 10px;
  }
  div.tit{
    font-size: 14px;
    font-weight: bold;
    text-align: left;
  }
  div.subtit{
    color:#777;
    font-size: 12px;
    font-weight: bold;
    text-align: left;
  }
  div.right{
    display: flex;
    align-items: center;
    justify-content: flex-end;
  }
  div.right span{
    display: flex;
    align-items: center;
    justify-content: center;
    width: 20px;
    padding: 0 5px;
  }
  div.right .but{
    width: 20px;
    height: 20px;
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 0;
    border: 0;
    outline: 0;
    background-color: transparent;
  }
  .but>img{
    width: 20px;
  }
  div.info{
    width: 40%;
  }
  div.price{
    text-align: left;
    margin: 5px 0;
  }
  div.pricerow{
    width:100% ;
    height: 50px;
    position: fixed;
    bottom: 80px;
    background-color: rgba(0,0,0,0.1);
    display: flex;
    align-items: center;
    justify-content: center;
  }
  div.pricerow .span1{
    font-weight: bold;
  }
  div.pricerow .span1,
  div.pricerow .span3{
    display: flex;
    align-items: center;
    justify-content: center;
  }
  div.pricerow .span2{
    width: 180px;
    text-align: left;
    font-size: 26px;
  }
</style>