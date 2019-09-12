
/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */


require('./bootstrap');

window.Vue = require('vue');

import Vue from 'vue';
import BootstrapVue from 'bootstrap-vue';
import 'bootstrap/dist/css/bootstrap.css';
import 'bootstrap-vue/dist/bootstrap-vue.css';
/**
 * The following block of code may be used to automatically register your
 * Vue components. It will recursively scan this directory for the Vue
 * components and automatically register them with their "basename".
 *
 * Eg. ./components/ExampleComponent.vue -> <example-component></example-component>
 */

// const files = require.context('./', true, /\.vue$/i);
// files.keys().map(key => Vue.component(key.split('/').pop().split('.')[0], files(key).default));

//Vue.component('example-component', require('./components/ExampleComponent.vue').default);
Vue.component('alumna', require('./components/Alumna.vue').default);
Vue.component('orientadora', require('./components/Orientadora.vue').default);
Vue.component('psicologa', require('./components/Psicologa.vue').default);
Vue.component('terapeuta', require('./components/Terapeuta.vue').default);
Vue.component('vsocial', require('./components/Vsocial.vue').default);
Vue.component('gestion', require('./components/Gestion.vue').default);
Vue.component('convivencia', require('./components/Convivencia.vue').default);
Vue.component('educadora', require('./components/Educadora.vue').default);
Vue.component('reportes', require('./components/Reporte.vue').default);
Vue.component('reportedirectora', require('./components/ReporteDirectora.vue').default);
Vue.component('rol', require('./components/Rol.vue').default);
Vue.component('user', require('./components/Users.vue').default);
Vue.component('escritorio', require('./components/Escritorio.vue').default);
Vue.component('importar', require('./components/Importar.vue').default);
Vue.component('curso', require('./components/Cursos.vue').default);

/**
 * Next, we will create a fresh Vue application instance and attach it to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */


const app = new Vue({
    el: '#app',
    data:{
        menu : 0,
        /* ruta : 'http://localhost:8000/atencion/public' */
        /* ruta : '' */
    }
});
