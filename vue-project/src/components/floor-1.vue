<template>
    <div class="floor-1">
        <div class="floor-title">
            <p>品牌热卖</p>
            <p>HOT PRODUCTS</p>
        </div>
        <div class="floor-content">
            <el-row>
                <el-col v-for="(tmp,index) in imgList" :key="index" :sm="6" :xs="24">
                    <div><img :src="tmp" @click="toPetShop(index+1)"></div>
                    <p>{{imgNameList[index]}}</p>
                    <div class="content">{{imgContent[index]}}</div>
                </el-col>
            </el-row>
        </div>
    </div>
</template>
<script>
import '../assets/css/floor-1.css'
export default {
    beforeMount(){
        this.imgContent[0]="由国内知名营养学家为爱宠研发出健康、美味的天然食品。精选优质的原料，科学的营养搭配，给予爱宠极佳的适口性。";
        this.imgContent[1]="全部采用欧盟标准材料，我们使用坚定国外的宠物用品理念，用严格的标准制作宠物用品。";
        this.imgContent[2]="优质的蛋白质给爱宠提供充足的营养，使爱宠的体魄更矫健肌肉更发达。";
        this.imgContent[3]="御寒更好的办法是加强锻炼，多参加户外活动。此外，即使给宠物穿衣，衣物一定要合身，否则会导致宠物精神萎靡。";
    },
    methods:{
        toPetShop(index){
            let url="/petShop/"+index;
            this.$router.push(url);
        }
    },
    data(){
        return {
            "imgList":[require("../assets/img/1498912805.png"),require("../assets/img/1498912577.png"),require("../assets/img/1498912631.png"),require("../assets/img/1498912713.png")],
            "imgNameList":["宠物食品","宠物用品","宠物药品","宠物玩具"],
            "imgContent":[]
        }
    }
}
</script>

