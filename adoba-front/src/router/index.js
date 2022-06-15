import { createRouter, createWebHashHistory } from 'vue-router'
import ResponsableRSE from '../views/ResponsableRSE.vue'
import MagasinView from '../views/MagasinView.vue'
import CollecteView from '../views/CollecteView.vue'

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
  },
  {
    path: '/collecte/:id',
    name: 'collecte',
    component: CollecteView,
    props: true
  }
]

const router = createRouter({
  history: createWebHashHistory(),
  routes
})

export default router
