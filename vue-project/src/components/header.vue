<template>
    <el-row class="header">
            <el-col :span="10"><img src="../assets/img/chongwudianLOGO7_8880895.jpg" height="60"></el-col>
            <el-col :span="14">
                <el-row>
                    <el-menu :default-active="activeIndex" class="el-menu-demo" mode="horizontal" @select="handleSelect">
                        <el-col :sm="4" :xs="8"> 
                            <el-menu-item index="1"><router-link to="/" class="item-nav">首页</router-link></el-menu-item>
                        </el-col>
                        <el-col :sm="6" :xs="8"> 
                            <el-submenu index="2">
                                <template slot="title"><router-link to="/" class="item-nav">宠物商品</router-link></template>
                                <el-menu-item index="2-1"><router-link to="/petShop/1" class="item-link">宠物食品</router-link></el-menu-item>
                                <el-menu-item index="2-2"><router-link to="/petShop/2" class="item-link">宠物用品</router-link></el-menu-item>
                                <el-menu-item index="2-3"><router-link to="/petShop/3" class="item-link">宠物药品</router-link></el-menu-item>
                                <el-menu-item index="2-4"><router-link to="/petShop/4" class="item-link">宠物玩具</router-link></el-menu-item>
                            </el-submenu>
                        </el-col>
                        <el-col :sm="6" :xs="8"> 
                            <el-submenu index=3>
                                <template slot="title"><router-link to="/petclass" class="item-nav">爱宠课堂</router-link></template>
                                <el-submenu index="3-1">
                                <template slot="title"><router-link to="/petclass" class="item-title">幼宠新手爸妈指南</router-link></template>
                                <el-menu-item index="3-1-1"><router-link to="/petclass/littlecat" class="item-link">幼猫篇</router-link></el-menu-item>
                                <el-menu-item index="3-1-2"><router-link to="/petclass/littledog" class="item-link">幼犬篇</router-link></el-menu-item>
                                </el-submenu>
                                <el-submenu index="3-2">
                                <template slot="title"><router-link to="/petclass" class="item-title">宠物健康问答</router-link></template>
                                <el-menu-item index="3-2-1"><router-link to="/petclass/catcare" class="item-link">猫健康问答</router-link></el-menu-item>
                                <el-menu-item index="3-2-2"><router-link to="/petclass/dogcare" class="item-link">犬健康问答</router-link></el-menu-item>
                                </el-submenu>
                            </el-submenu>
                        </el-col>
                    </el-menu>
                </el-row>
                <!--
                <el-row class="dropdown-warp" type="flex" align="middle">
                    <el-col :span="4"><router-link to="/">首页</router-link></el-col>
                    <el-col :span="6">
                        <el-dropdown placement="bottom">
                            <span class="el-dropdown-link">
                                宠物用品<i class="el-icon-arrow-down el-icon--right"></i>
                            </span>
                            <el-dropdown-menu slot="dropdown">
                                <el-dropdown-item >宠物食品</el-dropdown-item>
                                <el-dropdown-item >宠物玩具</el-dropdown-item>
                                <el-dropdown-item >宠物服饰</el-dropdown-item>
                            </el-dropdown-menu>
                        </el-dropdown>
                    </el-col>
                    <el-col :span="6">
                        <el-dropdown placement="bottom">
                            <span class="el-dropdown-link">
                                <router-link to="/petClass">爱宠课堂</router-link>
                                <i class="el-icon-arrow-down el-icon--right"></i>
                            </span>
                            <el-dropdown-menu slot="dropdown">
                                <el-dropdown-item class="dropdown-item-title">幼宠新手爸妈指南</el-dropdown-item>
                                <el-dropdown-item class="dropdown-item-content">幼猫篇</el-dropdown-item>
                                <el-dropdown-item class="dropdown-item-content">幼犬篇</el-dropdown-item>
                                <el-dropdown-item class="dropdown-item-title">宠物健康问答</el-dropdown-item>
                                <el-dropdown-item class="dropdown-item-content">猫健康问答</el-dropdown-item>
                                <el-dropdown-item class="dropdown-item-content">犬健康问答</el-dropdown-item>
                            </el-dropdown-menu>
                        </el-dropdown>
                    </el-col>
                </el-row>-->
            </el-col>
        </el-row>
</template>
<script>
import '../assets/css/header.css'
export default {
    beforeMount(){

    },
    methods:{
        handleSelect(){
            
        }
    },
    data(){
        return{
            activeIndex:"",

        }
    }
}
</script>
<style>

</style>


