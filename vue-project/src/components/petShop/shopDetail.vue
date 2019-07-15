<template>
    <el-col :md="{span:18,offset:3}" >
        <el-row>
            <el-col :span="12" class="shopMd">
                <img :src="shopDetail.md" width="100%">
            </el-col>
            <el-col :span="12" class="shopDetail">
                <h2>{{shopDetail.dname}}</h2>
                <div>
                    <span>包装规格： </span>
                    <span>{{shopDetail.dspecs}}</span>
                </div>
                <div>
                    <span>适用年龄：</span>
                    <span>{{shopDetail.dage}}</span>
                </div>
                <div>
                    <span>适用对象：</span>
                    <span>{{shopDetail.dobject}}</span>
                </div>
                <div>
                    <span>功能优势：</span>
                    <span v-html="shopDetail.dtext"></span>
                </div>
            </el-col>
            <el-col>
                <img :src="shopDetail.infoImg" width="100%">
            </el-col>
        </el-row>
    </el-col>
</template>

<script>
import '@/assets/css/petShop/shopDetail.css'
export default {
    beforeMount(){
        let did=this.$route.params.did;
        this.typeShop=did;
        this.getShopDetail(did);
    },
    methods:{
        getShopDetail(did){
            let url=this.serveUrl+"/shopDetail";
            url+="?did="+did;
            this.axios.get(url).then(result=>{
                for(let li of result.data){
                        this.shopDetail=li;
                }
                this.shopDetail.md=this.serveUrl+this.shopDetail.md;
                this.shopDetail.infoImg=this.serveUrl+this.shopDetail.infoImg;
            });
        }
    },
    data(){
        return {
            typeShop:0,
            shopDetail:{}
        }
    }
}
</script>

<style>

</style>
