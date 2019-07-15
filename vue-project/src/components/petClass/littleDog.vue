<template>
    <div>
        <!--视频-->
        <div class="video" :style="{'display':videoShow?'block':'none'}">
                <iframe frameborder="0" src="https://v.qq.com/txp/iframe/player.html?vid=m0567d8i59u" allowFullScreen="true"></iframe> 
                <a @click="videoHidden(false)">
                    <img src="../../assets/img/1498912808.png">
                    <span>关闭</span>
                </a>
        </div>  
        <!--介绍-->
        <el-col :md="{span:18,offset:3}" class="pet-banner">
            <img src="../../assets/img/main.317e5e38.png" width="80%">
            <img class="videoImg" src="../../assets/img/bannervideoposter.eae70323.png" width="30%" @click="videoHidden(true)">       
        </el-col>
        <!--生活习性-->
        <el-col :md="{span:18,offset:3}" class="pet-life">
            <el-row>
                <el-col :sm="{span:2,offset:1}" class="pet-life-title">迎接幼犬的到来</el-col>
                <el-col :sm="20" class="pet-life-content">
                    <h1>生活习性</h1>
                    <span>你的幼犬刚抵达一个全新的环境，需要认识新的家庭成员、家中其他宠物，请不要激动的兴高采烈，尽量让他自己在感觉舒适的状况里探索，选择他感到舒服的空间。</span>
                    <el-row class="shop">
                        <img src="../../assets/img/lifePuppy.47c8780f.png">
                        <h1>如何准备幼犬的日常活动空间？</h1>
                        <el-col :span="24" class="shop-title">
                            <span></span>
                            <h3>必须的生活用品</h3>
                            <span></span>
                        </el-col>
                        <el-col :sm="index==0?{span:4}:{span:4,offset:1}" v-for="(tmp,index) in imgUrl" :key="index" class="shopList">
                                <img :src="tmp" width="50%">
                                <h3>{{imgTitle[index]}}</h3>
                                <span>{{imgInfo[index]}}</span>
                        </el-col>
                        <el-col :span="24" class="shop-bottom" >
                            <img src="../../assets/img/comeFurniture.610eb3fc.png" width="70%">
                            <p>
                                当幼犬抵达家中时，可以先把他放在客厅或厨房中安静的角落，这个安全的空间能让他开始熟悉环境并展开探索，慢慢熟悉屋里其他成员、各种声音与气味；一段时间后，他会开始发现所有他可以进入的地方，并且习惯每个人的来来去去。
                            </p>
                        </el-col>
                    </el-row>
                </el-col>
            </el-row>
        </el-col>
        <!--饮食-->
        <el-col :md="{span:18,offset:3}" class="pet-diet">
            <el-row>
                <el-col :sm="{span:2,offset:1}" class="pet-life-title">关于幼犬的饮食</el-col>
                <el-col :sm="20" class="pet-life-content">
                    <el-row class="pet-diet-detail">
                        <el-col :sm="{span:12}">
                            <el-row>
                                <el-col class="diet-img1">
                                    <img src="../../assets/img/cathouse.c2a027b1.png" width="25%">
                                </el-col>
                                <el-col>
                                    <img src="../../assets/img/point2.60e5869d.png" width="93%">    
                                </el-col>
                            </el-row>
                        </el-col>
                        <el-col :sm="{span:12}" >
                                <el-col>
                                    <img src="../../assets/img/point1.61a3c87f.png" width="93%">
                                </el-col>
                                <el-col class="diet-img2">
                                    <img src="../../assets/img/petsbowl.39d2fc06.png" width="25%">
                                </el-col>
                                <el-col>
                                    <img src="../../assets/img/point3.7f8b41e6.png" width="93%">    
                                </el-col>
                        </el-col>
                    </el-row>
                </el-col>
            </el-row>
        </el-col>
        <!--重要时刻-->
        <el-col :md="{span:18,offset:3}" class="pet-impro">
            <el-row>
                <el-col :sm="{span:2,offset:1}" class="pet-life-title">关于幼犬重要时刻</el-col>
                <el-col :sm="20" class="pet-life-content">
                    <el-row class="pet-impro-detail">
                        <el-col :sm="{span:12}">
                            <el-row>
                                <el-col>
                                    <img src="../../assets/img/mianyi.59c8ac59.png" width="93%">    
                                </el-col>
                                <el-col class="impro-jueyu">
                                    <img src="../../assets/img/jueyu.7b50da57.png" width="93%">    
                                </el-col>
                            </el-row>
                        </el-col>
                        <el-col :sm="{span:12}" >
                                <el-col class="impro-quwen">
                                    <img src="../../assets/img/quchong.30ad10da.png" width="93%">
                                </el-col>
                                <el-col class="impro-img1" :span="12">
                                    <img src="../../assets/img/petsbowl.39d2fc06.png" width="40%">
                                </el-col>
                                <el-col class="impro-img2" :span="12">
                                    <img src="../../assets/img/petsbowl.39d2fc07.png" width="20%">
                                </el-col>
                        </el-col>
                    </el-row>
                </el-col>
            </el-row>
        </el-col>
    </div>
</template>
<script>
import '../../assets/css/petClass/littleDog.css'
export default {
    beforeMount(){
        for(let i=0;i<5;i++){
            this.imgUrl[i]=require("../../assets/img/149891281"+i+".png");
        }

        this.imgTitle[0]="睡窝";
        this.imgTitle[1]="牵绳";
        this.imgTitle[2]="玩具";
        this.imgTitle[3]="两个喂食碗";
        this.imgTitle[4]="狗名牌";

        this.imgInfo[0]="加上舒适柔软的床垫，能让幼犬感到安全。第一个晚上，你可以在他窝内放有一点狗妈妈气味的碎布。";
        this.imgInfo[1]="让他从小就习惯，教他走在你的身边。";
        this.imgInfo[2]="让幼犬不会咬你的家具或你的东西。你可以买一些玩具来让他咬。如果你给他一根骨头，请不要让他无人看管，避免发生危险";
        this.imgInfo[3]="一个用于犬粮和一个更大的碗来放置饮用水。";
        this.imgInfo[4]="你的幼犬项圈上需要一个带有你的名字和电话号码信息的名牌。(当你的狗走失时将十分管用)。";
    },
    methods:{
        videoHidden(show){
            this.videoShow=show;
            if(show){
                document.getElementsByTagName("body")[0].className="scrollHidden";
            }else{
                document.getElementsByTagName("body")[0].removeAttribute("class","scrollHidden");
            }
        }
    },
    data(){
        return {
            videoShow:false,//视频显示
            imgUrl:[],//生活用品图片
            imgTitle:[],//生活用品图片名称
            imgInfo:[]//生活用品图片描述
        }
    }
}
</script>
