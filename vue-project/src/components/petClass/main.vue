<template>
    <div>
        <el-col :md="{span:18,offset:3}" >
            <img src="@/assets/img/banner.a498923a.png" width="100%">
        </el-col>
        <el-col :md="{span:18,offset:3}" class="pet-nav" >
            <el-row>
                <el-col :span="24" class="pet-nav-title" ><h1>新手爸妈指南</h1></el-col>
                <el-col :sm="{span:4,offset:7}" :xs="{span:4,offset:4}" class="pet-nav-input hoverColor"><a @click="toLittleDog">幼犬主人</a></el-col>
                <el-col :sm="{span:4,offset:2}" :xs="{span:4,offset:6}"  class="pet-nav-input hoverColor"><a @click="toLittleCat">幼猫主人</a></el-col>
            </el-row>
        </el-col>
        <el-col :md="{span:18,offset:3}" class="pet-breed">
            <el-col :span="24" class="breed-top"><h1 class="hoverColor">品种课堂</h1></el-col>
            <el-col :span="6" class="breed-side">
                <el-row>
                    <el-col><img src="@/assets/img/1498912806.png" width="30px"></el-col>
                    <el-col>品种犬小知识早知道</el-col>
                    <el-col><a>品种犬主人</a></el-col>
                </el-row>
            </el-col>       
            <el-col :span="12"><img src="@/assets/img/checkout-banner.38377313.png" width="100%"></el-col>
            <el-col :span="6" class="breed-side">
                <el-row>
                    <el-col><img src="@/assets/img/1498912806.png" width="30px"></el-col>
                    <el-col>品种猫小知识早知道</el-col>
                    <el-col><a>品种猫主人</a></el-col>
                </el-row>
            </el-col>
        </el-col>
        <el-col :md="{span:18,offset:3}" class="pet-care" >
            <el-row>
                <el-col :span="24" class="hoverColor" ><h1>宠物健康课程</h1></el-col>
                <el-col :span="12" class="">
                    <img src="@/assets/img/dogclassbanner.7773b696.png" width="80%">
                    <div class="pet-careInput" @click="toDogCare">犬健康</div>
                </el-col>
                <el-col :span="12" class="">
                    <img src="@/assets/img/catclassbanner.0adc4bf3.png" width="80%">
                    <div class="pet-careInput" @click="toCatCare">猫健康</div>
                </el-col>
            </el-row>
        </el-col>
    </div>
</template>
<script>
import '../../assets/css/petClass/main.css'
export default {
    methods:{
        toLittleDog:function(){
            this.$router.push("/petClass/littledog");
        },
        toLittleCat:function(){
            this.$router.push("/petClass/littlecat");
        },
        toCatCare:function(){
            this.$router.push("/petClass/catcare");
        },
        toDogCare:function(){
            this.$router.push("/petClass/dogcare");
        }
    }
}
</script>

