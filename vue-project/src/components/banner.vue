<template>
    <div class="banner">
        <!--广告图片-->
        <ul class="banner-imgUl" ref="bannerShow">
            <li v-for="(tmp,index) in imgList" :key="index" :class="index==imgShow?'img-show':''" :style="{'opacity':imgChange?'0':'1'}"><img :src="tmp"></li>
        </ul>
        <!--广告文字-->
        <div class="banner-text" :style="{'opacity':!imgChange?'1':'0'}">
            <h1>千万宠爱 专业呵护</h1>
            <div>
                <router-link to="petclass">了解更多</router-link>
            </div>
        </div>
        <!--广告图片动画-->
        <div id="banner-show" :style="{'display':imgChange?'block':'none'}" >
                <div class="show-wrap">
                    <div v-for="(tmp,index) in emList" :key="index" :style="{'animation':imgAnimation1[index],'transform':imgTransform}">
                        <em class='em1' :style="{'background':'url('+imgList[imgShow]+') 0px '+index * (-imgPosHeight)*0.2+ 'px'+' / '+imgPosWidget*2+'px'+' '+imgPosHeight+'px'}"></em>
                        <span class='span1'></span>
				        <em class='em2' :style="{'background':'url('+imgList[nextImgShow]+') 0px '+index * (-imgPosHeight)*0.2+ 'px'+' / '+imgPosWidget*2+'px'+' '+imgPosHeight+'px'}"></em>
                        <span class='span2'></span>
                    </div>
                </div>
                <div class="show-wrap">
                    <div v-for="(tmp,index) in emList" :key="index" class="div2" :style="{'animation':imgAnimation2[index],'transform':imgTransform}">
                        <em class='em1' :style="{'background':'url('+imgList[imgShow]+') -'+imgPosWidget+'px '+(- index) * imgPosHeight*0.2 + 'px'+' / '+imgPosWidget*2+'px'+' '+imgPosHeight+'px'}"></em>
                        <span class='span1'></span>
                        <em class='em2' :style="{'background':'url('+imgList[nextImgShow]+') '+(-imgPosWidget)+'px '+(- index) * imgPosHeight*0.2 + 'px'+' / '+imgPosWidget*2+'px'+' '+imgPosHeight+'px'}"></em>
                        <span class='span2'></span>
                    </div>
                </div>                
        </div>
        <div class="banner-left" @click="imgPrev"><a class="el-icon-arrow-left"></a></div>
        <div class="banner-right" @click="imgNext"><a class="el-icon-arrow-right"></a></div>
        <div class="banner-bottom">
            <ul class="banner-ul">
                <li v-for="(tmp,index) in imgList" :key="index" class="lf" :class="index==imgShow?'li-show':''" @mouseover="imgUlclick(index)"></li>
            </ul>
        </div> 
    </div>
</template>
<script>
import '../assets/css/banner.css'
import { setInterval, clearInterval } from 'timers';

export default {
    beforeMount(){
        for(let i=0;i<this.imgChangeCount;i++){
             this.imgAnimation1[i]="";
             this.imgAnimation2[i]="";
        }
    },
    mounted(){
        this.imgTimer=window.setInterval(this.imgNext,8000);
    },
    beforeDestroy(){
        if(this.imgTimer!==null)
            window.clearInterval(this.imgTimer);
        this.imgTimer=null;
    },
    data(){
        return {
            "imgList":[require("../assets/img/1499003237.jpg"),require("../assets/img/1499003243.jpg"),require("../assets/img/1499003251.jpg")],
            "emList":["","","","",""],
            "imgShow":0,//本张图片
            "nextImgShow":1,//下一张图片
            "imgChange":false,//图片切换过程
            "imgChangeCount":5,//图片分割数量
            "imgTransform":"rotateX(180deg)",
            "imgAnimation1":["",""],//切换动画
            "imgAnimation2":["",""],//切换动画
            "imgTimer":null,//定时器,
            "imgPosHeight":461,//banner高
            "imgPosWidget":641.5//banner宽
        }
    },
    methods:{
        tab(){
            this.imgPosHeight=this.$refs.bannerShow.offsetHeight;
            this.imgPosWidget=this.$refs.bannerShow.clientWidth/2;
            this.imgTransform="rotateX(0deg)";
            for(let i=0;i<this.imgChangeCount;i++){
                this.imgAnimation1[i]="move1 1.5s ease "+0.05*i+"s";
                this.imgAnimation2[i]="move2 1.5s ease "+0.05*i+"s";
            }
            this.transform = "rotateX(180deg)";
            setTimeout(()=>{
                this.imgShow=this.nextImgShow;
                setTimeout(()=>{
                    for(let i=0;i<this.imgChangeCount;i++){
                        this.imgAnimation1[i]="";
                        this.imgAnimation2[i]="";
                    }
                    this.imgChange=false;
                },250)
            },1500);
        },
        imgPrev(){
            if(this.imgChange){return}
            this.imgChange=true;
            this.nextImgShow=this.imgShow-1;
            if(this.nextImgShow<0){this.nextImgShow=this.imgList.length-1}
            this.tab();//切换图片
        },
        imgNext(){
            if(this.imgChange){return}
            this.imgChange=true;
            this.nextImgShow=this.imgShow+1;
            if(this.nextImgShow>=this.imgList.length){this.nextImgShow=0}
            this.tab();//切换图片
        },
        imgUlclick(index){
            if(this.imgChange||index==this.imgShow){return}
            this.imgChange=true;
            this.nextImgShow=index;
            if(this.nextImgShow>=this.imgList.length){this.nextImgShow=0}
            this.tab();//切换图片
        }
    }
}
</script>
<style>

</style>

