require('./bootstrap');

window.Vue = require('vue');
//Support editor
import 'v-markdown-editor/dist/v-markdown-editor.css';
import Editor from 'v-markdown-editor'
Vue.use(Editor);

//Support Vuex

import Vuex from 'vuex'
Vue.use(Vuex)
import storeData from "./store/index"
const store = new Vuex.Store(
	storeData
)
//Support Moment Js
import {filter} from './filter'

//vue router

import VueRouter from 'vue-router'
Vue.use(VueRouter)

import {routes} from './routes';

Vue.component('example-component', require('./components/ExampleComponent.vue').default);
Vue.component('admin-main', require('./components/admin/AdminMaster.vue').default);
Vue.component('home-main', require('./components/public/PublicMaster.vue').default);

//V-form
import { Form, HasError, AlertError } from 'vform'
window.Form=Form;

// Sweet Alert
import Swal from 'sweetalert2'
window.Swal=Swal;
const Toast = Swal.mixin({
  toast: true,
  position: 'top-end',
  showConfirmButton: false,
  timer: 3000,
  timerProgressBar: true,
  onOpen: (toast) => {
    toast.addEventListener('mouseenter', Swal.stopTimer)
    toast.addEventListener('mouseleave', Swal.resumeTimer)
   }
})

window.Toast=Toast

Vue.component(HasError.name, HasError)
Vue.component(AlertError.name, AlertError)


const router = new VueRouter({
  routes, 
  mode:'hash'
})

const app = new Vue({
    el: '#app',
    router,
    store
});
