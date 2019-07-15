<template>
    <div>
        <el-col :md="{span:18,offset:3}" >
            <img src="../../assets/img/catclassbannerNew.b390ef83.png" width="100%">
        </el-col>
        <el-col :md="{span:18,offset:3}" >
            <el-tabs v-model="activeName" @tab-click="handleClick(activeName,0)" class="tabs">
                <el-tab-pane v-for="(tmp,index) in tabName" :key="index" :label="tmp.tname" :name="''+tmp.tid" class="tabs-wrap">
                    <div v-for="(con,num) in tabContent" :key="num" class="tabs-content">
                        <h1 v-if="con.dname!==''">
                            {{con.dname}}
                        </h1>
                        <p v-if="con.dtext!==''">
                            {{con.dtext}}
                        </p>
                        <img :src="con.url" v-if="con.url!==''" width="100%">
                    </div>
                </el-tab-pane>
            </el-tabs>
        </el-col>
    </div>
</template>
<script>
import '../../assets/css/petClass/catCare.css'
export default {
    mounted(){
        this.axios.get("http://127.0.0.1:3000/careType").then(
            result=>{
                this.tabName=result.data;
            }
        ); 
        this.handleClick(this.activeName,0);
        this.$forceUpdate();
    },
    methods:{
            handleClick(tid,type){
                var url = "http://127.0.0.1:3000/careDetail";
                url+="?tid="+tid;
                url+="&type="+type;
                this.axios.get(url) .then(
                    result=>{
                        this.tabContent=result.data;
                        for(let li of this.tabContent){
                            if(li.url!==''){
                                console.log(typeof li.url);
                                li.url=this.serveUrl+li.url;
                                console.log(li.url);
                            }
                        }
                    }
                );
            }
    },
    data(){
        return {
            activeName:"1",
            tabName:[],
            tabContent:[]
        }
    }
}
</script>
