import Vue from 'vue'
import App from './App.vue'
import router from './router'
import ElementUI from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css'
Vue.use(ElementUI)
Vue.config.productionTip = false
//引入全局组件
import myHeader from './components/header.vue'
Vue.component("my-Header",myHeader);
new Vue({
  router,
  render: h => h(App),
}).$mount('#app')
