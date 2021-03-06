
/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');

/**
 * Next, we will create a fresh Vue application instance and attach it to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */
import router from './routes.js'
Vue.component('diploma-jobs', require('./components/professor/diploma/jobs/Jobs'));
Vue.component('course-project-jobs', require('./components/professor/course_project/jobs/Jobs'));
Vue.component('groups', require('./components/admin/Groups'));
Vue.component('disciplines', require('./components/admin/Disciplines'));

const app = new Vue({
    el: '#app',

    router: router
});
