import Vue from 'vue'
import Router from 'vue-router'

import HelloWorld from './components/HelloWorld.vue'
import Admin from './components/admin.vue'
Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      component: Admin
    }
  ]
})