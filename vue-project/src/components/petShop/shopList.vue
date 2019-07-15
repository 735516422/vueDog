<template>
    <el-col :md="{span:18,offset:3}" >
        <el-row>
            <el-col>
                <img src="@/assets/img/1499003252.jpg" width="100%">
            </el-col>
            <el-col :md="{span:12}" v-for="(tmp,index) in shopList" :key="index" class="shopList" >
                <el-row>
                    <el-col :span="12" @click.native="jumpShopDetail(tmp.did,tmp.dname)" >
                       <img :src="tmp.title" width="100%" >
                    </el-col>
                    <el-col :span="12" class="shop-info">
                        <div @click.capture="jumpShopDetail(tmp.did,tmp.dname)">
                            <p>{{tmp.dname}}</p>
                            <span v-html="tmp.dtext"></span>
                        </div> 
                    </el-col>
                </el-row>
            </el-col>
            <el-col :style="{'text-align': 'right'}">
                <el-pagination :current-page="pno" :page-size="pageSize" :page-count="pageCount" layout="prev, pager, next, jumper" @current-change="getShopList"></el-pagination>
            </el-col>
        </el-row>
    </el-col>
</template>
<script>
import '@/assets/css/petShop/shopList.css'
export default {
    beforeMount(){
        this.pid=this.$route.params.pid;
        this.getShopList(this.pno);
    },
    beforeRouteLeave(to,from,next){
        to.meta.title=this.dname;
        next();
    },
    watch:{
        '$route'(to,from){
            this.pid=this.$route.params.pid;
            this.getShopList(this.pno);
        }
    },
    methods:{
        getShopList(pno){
            let url=this.serveUrl+"/shopList";
            url+="?pno="+pno;
            url+="&pageSize="+this.pageSize;
            url+="&pid="+this.pid;
            this.axios.get(url) .then(
                result=>{
                    this.shopList=result.data.data;
                    this.pno=result.data.pno;
                    this.pageSize=result.data.pageSize;
                    this.pageCount=result.data.pageCount;
                    for(let li of this.shopList){
                        li.title=this.serveUrl+li.title;
                    }
                }
            ); 
        },
        jumpShopDetail(did,dname){
            console.log(1);
            this.dname=dname;
            this.$router.push(`shopDetail/${did}`);
        }
    },
    data(){
        return {
            pid:1,
            pno:1,
            pageSize:6,
            pageCount:1,
            shopList:[],
            dname:""
        }
    }
}
</script>
