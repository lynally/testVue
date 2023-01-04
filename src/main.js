import Vue from 'vue'
// import { createApp } from 'vue'
import App from './App.vue'
import router from './router'

Vue.config.productionTip = false

// eslint-disable-next-line no-unused-vars
const vue = new Vue({
  router,
  render: h => h(App)
}).$mount('#app')

