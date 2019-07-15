<template>
    <el-row class="pet-main">
        <el-col :md="{span:18,offset:3}" class="pet-top">
            <my-navCrumb></my-navCrumb>
        </el-col>
        <router-view></router-view>
    </el-row>
</template>
<script>
export default {
    
}
</script>
