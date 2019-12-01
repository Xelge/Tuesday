
const routes = [
  {
    path: '/',
    component: () => import('layouts/MyLayout.vue'),
    children: [
      {
        path: '',
        component: () => import('pages/home.vue')
      },
      {
        path: 'information',
        component: () => import('pages/information.vue')
      },
      {
        path: 'help',
        component: () => import('pages/help.vue')
      },
      {
        path: 'sponsorship',
        component: () => import('pages/sponsorship.vue')
      },
      {
        path: 'form',
        component: () => import('pages/form.vue')
      }
    ]
  },
  {
    path: '/registration',
    component: () => import('pages/registration.vue')
  },
  {
    path: '/login',
    component: () => import('pages/login.vue')
  },
  {
    path: '/brand_about',
    component: () => import('pages/brand_about.vue')
  }
]

// Always leave this as last one
if (process.env.MODE !== 'ssr') {
  routes.push({
    path: '*',
    component: () => import('pages/Error404.vue')
  })
}

export default routes
