
import { createRouter, createWebHistory } from 'vue-router';

import Dashboard from './pages/Dashboard.vue';
import CategoriesList from './pages/categories/CategoriesList.vue';
import CategoryEdit from './pages/categories/CategoriesEdit.vue';
import CategoryCreate from './pages/categories/CategoryCreate.vue';
import ProductsList from './pages/category_products/ProductsList.vue';
import ProductDetail from './pages/category_products/ProductsDetail.vue';
import ProductEdit from './pages/category_products/ProductsEdit.vue';
import ProductCreate from './pages/category_products/ProductCreate.vue';
import VariantList from './pages/variants/VariantList.vue';
import VariantEdit from './pages/variants/VariantEdit.vue';
import VariantCreate from './pages/variants/VariantCreate.vue';
 


const router = createRouter({
    history: createWebHistory(),
    routes: [
        {path: '/', component: Dashboard },
        {path: '/categories', component: CategoriesList, name: 'categories', props: true },
        {path: '/categories/create', component: CategoryCreate, name: 'categories_create', props: true},
        {path: '/categories/:id/products', component: ProductsList, name: 'category_products', props: true },
        {path: '/categories/edit/:id', component: CategoryEdit, name: 'category_edit', props: true},
        {path: '/products/create', component: ProductCreate, name: 'product_create'},
        {path: '/products/:id', component: ProductDetail, name: 'product', props: true},
        {path: '/products/:id/edit', component: ProductEdit, name: 'product_edit', props: true},
        {path: '/variants/create/:id', component: VariantCreate, name: 'variant_create'},
        {path: '/variants/:id', component: VariantList, name: 'variants'},
        {path: '/variants/:id/edit', component: VariantEdit, name: 'variant_edit'},
       
    ]
});


export default router;