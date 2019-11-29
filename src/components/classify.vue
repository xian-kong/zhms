<template>
    <div>
       <h1>我是食谱分类</h1>
       <h2 @click="back">返回</h2>
    </div>
</template>
<script>
export default{
    methods:{
        back(){
            this.$router.go(-1)
        }
    }
}
</script>
