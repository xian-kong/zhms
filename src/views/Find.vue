<template>
  <div>
    <mt-tab-container class="container">
      <mt-tab-container-item>
        <div class="toph">
          <h3>发现你的世界</h3>
          <img src="../assets/fabiao.png" alt="" @click="postmy">
        </div>
        <div class="hot">
          <div class="imgbg">
            <img class="hotimg" src="../assets/remen.png" alt="">
          </div>
          <div class="hottit">
            <div class="tit">热 门</div>
            <div class="subtit">瞅瞅大家都在关注什么</div>
          </div>
        </div>
        <mt-navbar v-model="selected">
              <mt-tab-item id="all-item">全部</mt-tab-item>
              <mt-tab-item id="foc-item">关注</mt-tab-item>
        </mt-navbar>
        <mt-tab-container v-model="selected">
          <mt-tab-container-item id="all-item" style="font-size:14px">
            <mt-cell class="cel" title="中华美食">
              <span class="timespan">26秒前</span>
              <img class="user" slot="icon" src="../assets/user_boy.png">
            </mt-cell>
            <div class="word">新发现一家美食,真的棒!</div>
            <img class="findfood" src="../assets/findfood1.jpg" alt="">
            <div class="handle">
              <div class="comment">
                <img src="../assets/pinglun1.png" alt="" @click="commentshow">
                <span class="num">666</span>
              </div>
              <div class="dianzan">
                <img src="../assets/dianzan1.png" alt="">
                <span class="num">666</span>
              </div>
            </div>
            <div class="commentarea">
              <div class="commentlist" v-for="(task,i) of tasks" :key="i" @click="del(i)">
                <img src="../assets/friend.png" alt="">
                <span class="nam">Lily</span>
                <span class="word">{{task}}</span>
              </div>
            </div>
          </mt-tab-container-item>
          <mt-tab-container-item id="foc-item" style="font-size:14px">
            <mt-cell class="cel" title="中华美食">
              <span class="timespan">8分钟前</span>
              <img class="user" slot="icon" src="../assets/friend.png">
            </mt-cell>
            <div class="word">开吃!!!</div>
            <img class="findfood" src="../assets/findfood2.jpeg" alt="">
            <div class="handle">
              <div class="comment">
                <img src="../assets/pinglun1.png" alt="" @click="commentshow">
                <span class="num">666</span>
              </div>
              <div class="dianzan">
                <img src="../assets/dianzan1.png" alt="">
                <span class="num">666</span>
              </div>
            </div>
            <div class="commentarea">
              <div class="commentlist" v-for="(task,i) of tasks" :key="i" @click="del(i)">
                <img src="../assets/friend.png" alt="">
                <span class="nam">Lily</span>
                <span class="word">{{task}}</span>
              </div>
            </div>
          </mt-tab-container-item>
  <!-- 发表动态popup -->
          <mt-popup class="postmy" v-model="popupVisible2" position="right">
            <div class="pophead">
              <img src="../assets/fanhui.png" alt="" style="width:25px;" @click="backlast">
            </div>
            <mt-field class="shuru2" placeholder="发表说说" type="textarea" v-model="val2"></mt-field>
            <div class="uploadimg">
              <span>添加图片</span>
              <!-- <img src="../assets/upload.png" alt=""> -->
            </div>
            <mt-button class="fasong" type="primary" size="small" @click="addmy">发送</mt-button>
          </mt-popup>
  <!-- 评论区域popup -->
          <mt-popup class="commentbg" v-model="popupVisible">
            <mt-field class="shuru" placeholder="想说点啥" type="textarea" v-model="val1"></mt-field>
            <mt-button class="fasong" type="primary" size="small" @click="addtask">发送</mt-button>
          </mt-popup>
        </mt-tab-container>
      </mt-tab-container-item>
    </mt-tab-container>  
  </div>
</template>
<script>
export default {
  data(){
    return {
      selected:"all-item",
      popupVisible:false,
      popupVisible2:false,
      val1:"",
      val2:"",
      tasks:[],
    }
  },
  methods:{
    commentshow(){
      this.popupVisible=true;
    },
    addtask(){
      if(!this.val1){
        this.$messagebox("提示","消息内容不能为空");
      }else{
        this.popupVisible=false;
        var t=setTimeout(()=>{
          this.tasks.push(this.val1);
          this.val1="";
        },400);  
      }
    },
    del(i){
      this.$messagebox
      .confirm('确定要删除这条消息吗?')
      .then(action => {
        this.tasks.splice(i,1)
      })
      .catch(err=>{}); 
    },
    postmy(){
      this.popupVisible2=true;
    },
    backlast(){
      this.popupVisible2=false;
    }
  } 
}
</script>
<style scoped>
/* 主体 */
  .container{

    margin: 0 auto;
  }
  .toph{
    display: flex;
    align-items: center;
    justify-content: space-between;
    border-bottom: 1px solid #ddd;
  }
  .toph>img{
    width: 25px;
  }
  h3{
    color: #555;
    margin:10px 0; 
    text-shadow: 7px 4px 14px rgba(0,0,0,0.5)
  }
  div.hot{
    width: 100%;
    height: 80px;
    border-radius: 3rem;
    background-image:linear-gradient(to right,#78BCF9,#6989F7); 
    display: flex;
    align-items: center;
    justify-content: center;
    color: #fff;
    margin: 5px auto;
  }
  div.imgbg{
    width: 50px;
    height: 50px;
    display: flex;
    align-items: center;
    justify-content: center;
    background-color: #fff;
    border-radius: 50%;
    margin-right:15px;
  }
  img.hotimg{
    width: 30px;
    
  }
  div.tit{
    font-size: 20px;
    margin-bottom: 5px;
    text-align: left
  }
  div.subtit{
    font-size: 12px;
    font-weight: 200;
  }
  div.navdiv{
    color:#A9A9A9;
    font-weight: bold;
    display: flex;
    align-items: center;
    justify-content: space-around;
    margin: 10px 0;
  }
  .all-item,.foc-item{
    border-top: 1px solid #F5F2F6;
  }
  .cel{
    font-weight: bold;
    margin: 10px 0;
    border-top: 1px solid #F5F2F6;
    border-bottom: 1px solid #F5F2F6;
    display: flex;
    align-items: center;
    padding: 5px;
  }
  span.timespan{
    font-size: 12px;
  }
  img.user{
     width:40px;
     height: 40px;
     border-radius: 50%;
     box-shadow: 0 0 5px 2px;
  }
  div.word{
    text-align: left;
    color:#666;
    font-weight: bold;
  }
  img.findfood{
    width: 60%;
    border-radius: 10px;
    margin:10px 0;
    display: flex;
    justify-content: flex-start;
  }
  div.handle,
  div.comment,
  div.dianzan{
    display: flex;
    align-items: center;
  }
  div.dianzan{
    margin-left: 20px;
  }
  div.handle img{
    width: 20px;
  }
  span.num{
    margin-left:5px;
    color:#888888; 
  }
  div.commentlist{
    display: flex;
    align-items: center;
    background-color: #E5E2E6;
    padding: 5px;
    margin-top: 10px;
    border-radius: 5px;
    font-size: 12px;
  }
  div.commentarea img{
    width: 20px;
    margin:0 5px;
  }
  .commentbg{
    width: 90%;
    box-shadow:0 0 4px 3px #fff;
    display: flex;
    align-items: center;
  }
  .commentbg .shuru{
    width: 85%;
  }
  .commentbg .fasong{
    font-size: 12px;
  }
  span.nam{
    margin-right: 10px;
    color:#888888; 
  }
/* 发表说说popup */
 .postmy{
   width: 100%;
   height: 100%;
 }
 .uploadimg{
   padding: 5px 10px;
   background-color: #E5E2E6;
   background-image: url(../assets/upload.png);
   background-repeat: no-repeat;
   background-size: 100%;
   margin: 0px 20px 20px;
   height: 40%;
 }
 .pophead{
    width:100%;
    height:60px;
    background-color:#78BCF9;
    display: flex;
    align-items: center;
    padding-left: 10px;
 }
</style>