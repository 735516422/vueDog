<template>
    <el-row class="floor-3">
        <el-col :span="8" v-for="(tmp,index) in titleList" :key="index" class="title">
            <router-link :to="titleUrl[index]" v-if="index!==1">
                <img src="../assets/img/1498912806.png">
                <span>{{tmp}}</span>
            </router-link>
        </el-col>
        <el-col :span="24">
            <img src="../assets/img/checkout-banner.38377313.png" width="50%" >
        </el-col>
    </el-row>
</template>
<script>
import '../assets/css/floor-3.css'
export default {
    data(){
        return {
            titleList:["新手爸妈 养宠指南","品种课堂","宠物健康知识早知道"],
            titleUrl:["/petclass/littledog","/","/petclass/dogcare"]//链接标题
        }
    }
}
</script>

