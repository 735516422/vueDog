<template>
    <el-breadcrumb separator="/">
        <el-breadcrumb-item :to="{ path: '/' }" >首页</el-breadcrumb-item>
        <el-breadcrumb-item v-for="(item,index) in navLittle" :key="item.path" :to="item.redirect||item.path"><span :class="index==navLittle.length-1?'hoverColor':''">{{item.meta.title}}</span></el-breadcrumb-item>
    </el-breadcrumb>
</template>
<script>
export default {
    beforeMount(){
        this.getBreadcrumb();
    },
    watch:{
        $route(to,from){
            this.getBreadcrumb();
        }
    },
    methods:{
        //面包屑
        getBreadcrumb() {
            let matched = this.$route.matched.filter(item => item.meta.title)
            this.navLittle = matched;
        },
    },
    data(){
        return{
            navLittle:''
        }
    }
}
</script>
