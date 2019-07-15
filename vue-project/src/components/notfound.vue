<template>
  <div>
    <h1>404 Page Not Found!</h1>
    <h3>{{count}}s自动返回上一页</h3>
  </div>
</template>

<script>
  export default{
      mounted(){
          //在组件挂载完毕之后 ，启动周期性定时器
        this.myTimer = setInterval(()=>{
            this.count--;
            //判断是否到了临界值
            if(this.count < 1){
                //关闭定时器
               clearInterval(this.myTimer)
              this.myTimer = null;
               //返回上一页
              this.$router.go(-1);
            }
        },1000);
      },
      beforeDestroy(){
          if(this.myTimer){
            clearInterval(this.myTimer);
          }

      },
      data(){
          return {
              count:10,
              myTimer:null
          }
      }
  }
</script>
