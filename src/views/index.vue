<template>
    <div class="container">
        <p class="content">
            <img src="../assets/imgs/rili.png" alt="" class="p_img">
            <input :value="keywords" @keyup.13="search" @click="aa" class="seek" placeholder="请输入您要搜索的内容" />
            <img src="../assets/imgs/fangdajing.png" alt="" class="p_img">
        </p>
        <!-- 轮播 -->
        <div class="swiper swiper_content">
            <div v-show="num==index" class="swiper_img" v-for="(pic,index) of bannerPics" :key="index"
               >
                <img :src="pic.picUrl2">
            </div>
        </div>
        <ul class="swiper_last">
            <li v-for="(item,index) of dots" :key='index' @click="getNum(index)">                   
                <div id="d1" :class="{'active':num==index}"></div>
            </li>
        </ul>
        <!-- 导航 -->
        <ul class="nav_bar">
            <li v-for="(item,index) in lists" :key="index"  @click="jump1(item.Lid)">
                <img :src="item.picUrl" alt="" style="width:30px;height:30px;">
                <p class="nav_font">{{item.textName}}</p>
            </li>
        </ul>
        <!-- 热门活动推荐 -->
        <p class="nav_navbbar"><img src="../assets/imgs/hongqi.png"> 活动推荐</p>
        <ul class="nav_conten">
            <li v-for="(item,index) of list" :key="index">
                <img :src="item.imgs" alt="">
                <p class="nav_font">{{item.title}}</p>
                <p>{{item.texts}}</p>
            </li>
        </ul>
        <!-- 每日新食谱 -->
        <p class="nav_navbbar"><img src="../assets/imgs/quanquan.png" style="margin-right:-5px;"><img
                src="../assets/imgs/shaozi.png"> 每日新食谱</p>
        <ul class="nav_cookbook">
            <li v-for="(item,index)  of list1" :key="index">
                <img :src="item.imgs1" alt="">
                <p class="nav_font">{{item.title1}}</p>
                <p>{{item.text1}}</p>
            </li>
        </ul>
        <!-- 加载更多 -->
        <van-loading size="24px" vertical>加载中...</van-loading>
    </div>
</template>
<style scoped>
     @import url('../style/index.css');
</style>
<script>
    export default {
        data() {
            return {
                keywords: "",
                num: 0,
                setTime: null,
                dots: [0, 1, 2, 3],
                bannerPics: [{
                    Bid: '01',
                    picUrl2: require('../assets/imgs/1.jpg')
                },

                {
                    Bid: '02',
                    picUrl2: require('../assets/imgs/2.jpg')
                },

                {
                    Bid: '03',
                    picUrl2: require('../assets/imgs/3.jpg')
                },
                {
                    Bid: '04',
                    picUrl2: require('../assets/imgs/4.jpg')
                }

                ],
                lists: [{
                    Lid: "001",
                    picUrl: require('../assets/imgs/shipu.png'),
                    textName: '食谱分类'
                },
                {
                    Lid: "002",
                    picUrl: require('../assets/imgs/pengrenjiqiao.png'),
                    textName: '烹饪技巧'
                },
                {
                    Lid: "003",
                    picUrl: require('../assets/imgs/xueyuan.png'),
                    textName: '食客学院'
                },
                {
                    Lid: "004",
                    picUrl: require('../assets/imgs/chuyi.png'),
                    textName: '厨艺分享'
                }
                ],
                list: [{
                    imgs: require('../assets/imgs/6.jpg'),
                    title: "一切为了瘦",
                    texts: "已有86人参与讨论"
                },
                {
                    imgs: require('../assets/imgs/5.jpg'),
                    title: "寻找家乡美食",
                    texts: "已有116人参与讨论"
                },
                {
                    imgs: require('../assets/imgs/7.jpg'),
                    title: "我吃的不是饭是...",
                    texts: "已有96人参与讨论"
                }
                ],
                list1: [{
                    imgs1: require('../assets/imgs/8.jpg'),
                    title1: "果味发面饼",
                    text1: "大海微澜"
                },
                {
                    imgs1: require('../assets/imgs/9.jpg'),
                    title1: "荷塘小炒",
                    text1: "一餐食光"
                },
                {
                    imgs1: require('../assets/imgs/10.jpg'),
                    title1: "清炒茼蒿",
                    text1: "芊芊"
                },
                {
                    imgs1: require('../assets/imgs/11.jpg'),
                    title1: "清蒸酱鸡翅根",
                    text1: "花鱼儿"
                },
                {
                    imgs1: require('../assets/imgs/12.jpg'),
                    title1: "豆角焖面",
                    text1: "一餐食光"
                },
                {
                    imgs1: require('../assets/imgs/13.jpg'),
                    title1: "巧克力蔓越莓面包",
                    text1: "可意妈妈"
                },
                {
                    imgs1: require('../assets/imgs/17.jpg'),
                    title1: "法式咸奶酪泡芙",
                    text1: "寻找桃花岛"
                },
                {
                    imgs1: require('../assets/imgs/15.jpg'),
                    title1: "蛋糕卷",
                    text1: "沙尔飞飞"
                },
                {
                    imgs1: require('../assets/imgs/16.jpg'),
                    title1: "南瓜荷叶饼",
                    text1: "荔冬2015"
                },
                {
                    imgs1: require('../assets/imgs/18.jpg'),
                    title1: "山药玉米粥",
                    text1: "琪_feXjZ8E2"
                },
                {
                    imgs1: require('../assets/imgs/19.jpg'),
                    title1: "牛骨清汤",
                    text1: "rosejyy2000"
                },
                {
                    imgs1: require('../assets/imgs/20.jpg'),
                    title1: "西芹炒鲜虾仁",
                    text1: "雨欣欣欣"
                },
                ]
            }
        },
        methods: {
            search() {
                console.log(`搜索${this.keywords}相关的内容`)
            },
            aa() {
                this.search()
            },
            getNum(nums) {
                this.num = nums
            },
            add() {
                this.setTime = setInterval(() => {
                    this.num < this.bannerPics.length - 1 ? this.num++ : this.num = 0
                }, 2000)
            },
            jump1(){
          

                    this.$router.push({
                    path:"/Classify",
                })
                
                
            }

        },
        created() {
            this.add()
        }
    }
</script>