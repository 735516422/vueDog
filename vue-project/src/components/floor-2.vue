<template>
    <div class="floor-2" ref="floor">
        <div>
            <!--<div class="floor-title">
                <p>宠物百科</p>
                <p>OUR DOGS</p>
            </div>-->
            <div class="floor-content">
                <ul class="floor-img">
                    <li v-for="(tmp,index) in imgList" :key="index" :class="imgClass[index]">
                        <img :src="tmp" @click="tmp==='p3'?isJump:isChange(index)" width="100%">
                    </li>
                </ul>
                <div class="floor-bottom">
                    <ul class="floor-ul">
                        <li v-for="(tmp,index) in imgList" :key="index" class="lf" :class="index===imgId?'li-show':''">
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div v-for="(tmp,index) in meteorList" :key="index" :class="meteorClass[index]" :style="tmp">
        </div>    
        <!--波浪渐变色背景-->
        <svg width="100%" :height="svgHeight+'px'" class="curveBorder">
            <defs>
                <linearGradient id="Gradient1">
                    <stop stop-color="rgb(7,120,197)"  offset="0%"/>
                    <stop stop-color="rgb(46,168,224)"  offset="50%"/>
                </linearGradient>
            </defs>
            <!-- Wave -->
            <g id="wave">
                <path :d="curvePath" stroke-linecap="round"  fill="url(#Gradient1)">
                </path>               
            </g>   
        </svg>
    </div>
</template>
<script>
import '../assets/css/floor-2.css'
import { setInterval } from 'timers';
//import { request } from 'http';
export default {
    beforeMount(){
        //设置波浪背景
        this.curvePath="M 0 15";
        for(let i=0;i<15;i++){
            let Qx=30+120*i;
            let Qy=0;
            let Qx1=60+120*i;
            let Qy1=15;
            let Tx=120+120*i;
            let Ty=15;
            let path=" Q "+Qx+" "+Qy+" "+Qx1+" "+Qy1+" T "+Tx+" "+Ty;
            this.curvePath+=path;
        } 
        this.curvePath+=" V 1800 "+(this.svgHeight-30)+" ";
        for(let i=0;i<15;i++){
            let Qx=1770-120*i;
            let Qy=this.svgHeight-30;
            let Qx1=1740-120*i;
            let Qy1=this.svgHeight-30+15;
            let Tx=1680-120*i;
            let Ty=this.svgHeight-30+15;
            let path=" Q "+Qx+" "+Qy+" "+Qx1+" "+Qy1+" T "+Tx+" "+Ty;
            this.curvePath+=path;
        }
        this.curvePath+=" H "+(this.svgHeight-30)+" 0 Z";
        //犬类图片
        this.imgList[0]=require("../assets/img/20171128020130_93559.jpg");
        this.imgList[1]=require("../assets/img/20171128020130_93558.jpg");
        this.imgList[2]=require("../assets/img/20160807111643_92933.jpg");
        this.imgList[3]=require("../assets/img/20171128020130_93557.jpg");
        this.imgList[4]=require("../assets/img/20171128020130_93556.jpg");
        //图片class
        this.imgClass[0]="p3";
        this.imgClass[1]="p4";
        this.imgClass[2]="p5";
        this.imgClass[3]="p1";
        this.imgClass[4]="p2";
        
    },
    mounted(){
        let wH=this.$refs.floor.offsetHeight;
        let wW=this.$refs.floor.clientWidth;
        this.svgHeight=this.$refs.floor.offsetHeight;
        //背景流星q
        for(let i=0;i<150;i++){
            this.meteorClass[i]=i % 20 == 0 ? 'star star--big' : i % 9 == 0 ? 'star star--medium' : 'star';
            this.meteorList[i]={'top':  Math.round(Math.random() * wH) + 'px','left': Math.round(Math.random() * wW) + 'px','animation-duration': (Math.round(Math.random() * 3000) + 3000) + 'ms','animation-delay':  Math.round(Math.random() * 3000) + 'ms'}
        }
        this.$forceUpdate();
        this.imgTimer=setInterval(this.isTimerImgChange,8000);
    },
    beforeDestroy(){
        if(this.imgTimer!==null)
            window.clearInterval(this.imgTimer);
        this.imgTimer=null;
    },
    methods:{
        isJump(){

        },
        isTimerImgChange(){
            let index=this.imgId;
            index++;
            if(index>=this.imgList.length)
                index=0;
            this.isChange(index);
        },
        isChange(index){
             let p1Id=this.imgId;
             let num=0;
             let arr=[];
             this.imgId=index;
             if(index<p1Id){
                num=p1Id-index;
                arr=this.imgClass.splice(0,num);
             }else{
                num=index-p1Id;
                arr=this.imgClass.splice(0,this.imgClass.length-num);
             }
             this.imgClass=this.imgClass.concat(arr);          
        }
    },
    data(){
        return {
            curvePath:"",//波浪线路径
            svgHeight:500,//svg高度
            imgId:0,//显示图片
            imgList:[""],//图片路径
            imgClass:[""],//图片样式
            meteorList:[""],//背景流星
            meteorClass:[""],//流星样式
            imgTimer:null//定时器
        }
    }
}
</script>
