<template>
<el-container>
  <el-header>
      <my-Header></my-Header>
  </el-header>
  <el-main :style="{'overflow': 'hidden','padding-bottom':'0px','padding-top': '10px'}">
      <router-view></router-view>
  </el-main>
  <my-footer></my-footer>
</el-container>
</template>
<script>
import '../assets/css/admin.css'
//引入局部组件banner
import footer from './footer.vue'
export default{
    components:{
        "my-footer":footer
    }
} 
</script>
<style>
.el-container{
    overflow: hidden;
}

</style>

