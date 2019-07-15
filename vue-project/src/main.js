import Vue from 'vue'
import App from './App.vue'
import router from './router'
import ElementUI from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css'
import axios from 'axios'
        

Vue.use(ElementUI)
Vue.config.productionTip = false
//设置全局变量
Vue.prototype.axios=axios;
Vue.prototype.serveUrl="http://127.0.0.1:3000";
//引入全局组件
import myHeader from './components/header.vue'
import myNavCrumb from './components/navCrumb.vue'
Vue.component("my-Header",myHeader);
Vue.component("my-navCrumb",myNavCrumb);
new Vue({
  router,
  render: h => h(App),
}).$mount('#app')
