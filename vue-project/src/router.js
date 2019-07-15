import Vue from 'vue'
import Router from 'vue-router'


import Admin from './components/admin.vue'
import MyMain from './components/main.vue'
import NotFound from '@/components/notfound'
//宠物课堂
import petClass from './components/petClass/petsclass.vue'
import petMyMain from './components/petClass/main.vue'
import littleDog from './components/petClass/littleDog.vue'//幼犬教育
import littleCat from './components/petClass/littleCat.vue'//幼猫教育
import catCare from './components/petClass/catCare.vue'//猫健康
import dogCare from './components/petClass/dogCare.vue'//犬健康
//宠物商品
import petShop from './components/petShop/petShop.vue'
import shopList from './components/petShop/shopList.vue'
import shopDetail from './components/petShop/shopDetail.vue'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      component: Admin,
      children:[
        //首页
        {path:'',component:MyMain},
        //宠物课堂
        {
          path:'petclass',
          meta:{title:'宠物课堂'},
          component:petClass,
          children:[
            {path:'',component:petMyMain},
            {path:'littledog',meta:{title:'幼犬教育'},component:littleDog},
            {path:'littlecat',meta:{title:'幼猫教育'},component:littleCat},
            {path:'catcare',meta:{title:'猫健康'},component:catCare},
            {path:'dogcare',meta:{title:'狗健康'},component:dogCare}
        ]
        },
        //宠物商品
        {
          path:'petshop',
          component:petShop,
          children:[
            {path:':pid',meta:{title:'狗粮专区'},component:shopList},
            {path:'shopDetail/:did',meta:{title:'狗粮专区'},component:shopDetail}
          ]
        }
    ]
    },{
      path:'*',component:NotFound
    }
  ]
})