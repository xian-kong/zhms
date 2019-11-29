<template>
  <div>
    <van-tabbar v-model="active">
      <van-tabbar-item replace to="/index" icon="gem-o"
      >
        首页
      </van-tabbar-item>
      <van-tabbar-item replace to="/Shop" icon="orders-o">
        购物
      </van-tabbar-item>
      <van-tabbar-item replace to="/Find" icon="share">
        发现
      </van-tabbar-item>
      <van-tabbar-item replace to="/Me" icon="contact">
        我的
      </van-tabbar-item>
    </van-tabbar>
  </div>
</template>
<script>
export default {
  data() {
    return {
      active: 0
    }
  }
}
</script>
