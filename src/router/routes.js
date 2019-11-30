
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
        path: 'brands',
        component: () => import('pages/brands.vue')
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
