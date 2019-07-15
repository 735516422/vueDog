<template>
    <div>
        <!--视频-->
        <div class="video" :style="{'display':videoShow?'block':'none'}">
                <iframe v-if="videoShow===true" frameborder="0" src="https://v.qq.com/txp/iframe/player.html?vid=q05674z51c6" allowFullScreen="true"></iframe>
                <a @click="videoHidden(false)">
                    <img src="../../assets/img/1498912808.png">
                    <span>关闭</span>
                </a>
        </div>  
        <!--介绍-->
        <el-col :md="{span:18,offset:3}" class="pet-banner">
            <img src="../../assets/img/main.a0bacc3d.png" width="80%">
            <img class="videoCatImg" src="../../assets/img/bannervideoposter.35be5884.png" width="30%" @click="videoHidden(true)">       
        </el-col>
        <!--生活习性-->
        <el-col :md="{span:18,offset:3}" class="pet-life">
            <el-row>
                <el-col :sm="{span:2,offset:1}" class="pet-life-title">迎接幼猫的到来</el-col>
                <el-col :sm="20" class="pet-life-content">
                    <h1>生活习性</h1>
                    <span>你的幼猫刚抵达一个全新的环境，需要认识新的家庭成员、家中其他宠物，虽然这让人迫不及待想为她举办热闹的欢迎会，但千万别真的这么做，这会吓到还在熟悉环境的幼猫呦！</span>
                    <el-row class="shop">
                        <img src="../../assets/img/comeKitten.48676ea4.png">
                        <h1>如何准备幼猫的日常活动空间？</h1>
                        <el-col :span="24" class="shop-title">
                            <span></span>
                            <h3>必须的生活用品</h3>
                            <span></span>
                        </el-col>
                        <el-col :sm="{span:5,offset:1}" v-for="(tmp,index) in imgUrl" :key="index" class="shopList">
                                <img :src="tmp" width="50%">
                                <h3>{{imgTitle[index]}}</h3>
                                <span>{{imgInfo[index]}}</span>
                        </el-col>
                        <el-col :span="24" class="shop-bottom" >
                            <img src="../../assets/img/comeFurniture.610eb3fc.png" width="70%">
                            <p>
                                当幼猫抵达家中时，可以先把她放在客厅或厨房中安静的角落，这个安全的空间能让她开始熟悉环境并展开探索，慢慢熟悉屋里其他成员、各种声音与气味。除此之外，你也会发现她时常坐在你的家具、橱柜之上，这是很正常的，猫咪喜欢高高在上的感觉!
                            </p>
                        </el-col>
                    </el-row>
                </el-col>
            </el-row>
        </el-col>
        <!--饮食-->
        <el-col :md="{span:18,offset:3}" class="pet-diet">
            <el-row>
                <el-col :sm="{span:2,offset:1}" class="pet-life-title">关于幼猫的饮食</el-col>
                <el-col :sm="20" class="pet-life-content">
                    <el-row class="pet-diet-detail">
                        <el-col :sm="{span:12}">
                            <el-row>
                                <el-col class="diet-img1">
                                    <img src="../../assets/img/cathouse.c2a027b1.png" width="25%">
                                </el-col>
                                <el-col>
                                    <img src="../../assets/img/point2.8f395644.png" width="93%">    
                                </el-col>
                            </el-row>
                        </el-col>
                        <el-col :sm="{span:12}" >
                                <el-col>
                                    <img src="../../assets/img/point1.97d6998d.png" width="93%">
                                </el-col>
                                <el-col class="diet-img2">
                                    <img src="../../assets/img/petsbowl.39d2fc06.png" width="25%">
                                </el-col>
                                <el-col>
                                    <img src="../../assets/img/point3.5f60bfe0.png" width="93%">    
                                </el-col>
                        </el-col>
                    </el-row>
                </el-col>
            </el-row>
        </el-col>
        <!--重要时刻-->
        <el-col :md="{span:18,offset:3}" class="pet-impro">
            <el-row>
                <el-col :sm="{span:2,offset:1}" class="pet-life-title">关于幼猫重要时刻</el-col>
                <el-col :sm="20" class="pet-life-content">
                    <el-row class="pet-impro-detail">
                        <el-col :sm="{span:12}">
                            <el-row>
                                <el-col>
                                    <img src="../../assets/img/mianyi.ee0bf782.png" width="93%">    
                                </el-col>
                                <el-col class="impro-jueyu">
                                    <img src="../../assets/img/jueyu.220352a5.png" width="93%">    
                                </el-col>
                            </el-row>
                        </el-col>
                        <el-col :sm="{span:12}" >
                                <el-col class="impro-quwen">
                                    <img src="../../assets/img/quchong.b26627a1.png" width="93%">
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
export default {
    beforeMount(){
        this.imgUrl[0]=require("../../assets/img/1498912810.png");
        this.imgUrl[1]=require("../../assets/img/1498912815.png");
        this.imgUrl[2]=require("../../assets/img/1498912813.png");
        this.imgUrl[3]=require("../../assets/img/1498912816.png");

        this.imgTitle[0]="猫窝";
        this.imgTitle[1]="猫砂盆";
        this.imgTitle[2]="两个喂食碗";
        this.imgTitle[3]="猫抓柱/板";

        this.imgInfo[0]="加上舒适柔软的床垫，能让幼猫感到安全。";
        this.imgInfo[1]="选择一个合适的尺寸，最好能有盖子来限制气味扩散。";
        this.imgInfo[2]="一个用于猫粮（一只体重3-4kg的成猫每天大约吃50-60g）和一个更大的碗来放置饮用水。";
        this.imgInfo[3]="这是相当有用的用品！能作为游戏的道具，并减少幼猫伤害家具的机率。";
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
