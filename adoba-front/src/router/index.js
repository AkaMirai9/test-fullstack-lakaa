import { createRouter, createWebHashHistory } from 'vue-router'
import ResponsableRSE from '../views/ResponsableRSE.vue'
import MagasinView from '../views/MagasinView.vue'

const routes = [
  {
    path: '/',
    name: 'responsable rse',
    component: ResponsableRSE
  },
  {
    path: '/magasin',
    name: 'magasin',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: MagasinView
  }
]

const router = createRouter({
  history: createWebHashHistory(),
  routes
})

export default router
