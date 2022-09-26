require('./bootstrap');

import { createApp } from 'vue';
import router from './router.js';

import App from './components/App.vue';



const app = createApp(App)

app.config.globalProperties.$root_url = '/http://127.0.0.1:8000/';
app.config.globalProperties.$root_path = '/';

app.use(router);

app.mount("#app");
