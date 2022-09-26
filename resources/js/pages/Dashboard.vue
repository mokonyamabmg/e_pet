<template>
    <div class="py-5">
    <div class="container loader_container" v-if="is_loading">
        <div class="row">
        <div class="col-md-12">
            <div id="loader" style="width: 100%; height: 40vh; text-align: center;" class="mt-5">
                <div class="lds-roller" style="margin-top: 30vh"><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div></div>
            </div>
        </div>
        </div>
    </div>
    <div class="container mt-3" v-if="!is_loading">
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-4" v-for="product in products" :key="product.id">
                        <div class="card card-item mt-4">
                            <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                                <img src="http://127.0.0.1:8000/images/food.jpeg" class="img-fluid"/>
                                <a href="#!">
                                <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                </a>
                            </div>
                            <div class="card-body text-center">
                                <h5 class="card-title">{{ product.name }}</h5>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-4 mb-4">
                    <div class="col-md-12 d-flex justify-content-end align-items-end">
                        <a @click="handle_category_view">View More</a>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-md-12 d-flex justify-content-start align-items-center">
                        <h5>Categories</h5>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4" v-for="category in categories" :key="category.id">
                        <div class="card card-item mt-3">
                            <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                                <img src="http://127.0.0.1:8000/images/pet2.jpeg" class="img-fluid"/>
                                <a href="#!">
                                <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                </a>
                            </div>
                            <div class="card-body text-center">
                                <h5 class="card-title">{{ category.name }}</h5>
                                
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-4 mb-5">
                    <div class="col-md-12 d-flex justify-content-end align-items-end">
                        <a @click="handle_category_view">View More</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</template>

<script>

export default {
    data() {
        return {
            products: [],
            categories: [],
            is_loading: true,
            is_authenticated: false
        }
    },
    methods: {
    loadData() {
        fetch(this.$root_path + 'user_authenticated')
            .then(response => response.json())
            .then(data => {
            this.is_authenticated = data;

            fetch(this.$root_path + 'api/categories/getCategories')
                .then(response => response.json())
                .then(data => {

                    this.categories = data.categories.slice(0, 3).map(category => {
                        return category;
                    });

                    fetch(this.$root_path + 'api/products/randomProducts')
                    .then(response => response.json())
                    .then(data => {
                        this.products = data.products;
                        this.is_loading = false;
                    })
                    console.log(data);
                })
            })
            .catch(err => {
                console.log(err);
                 this.is_loading = false;
            })
        },
        handle_category_view() {
            if(this.is_authenticated)
            {
                this.$router.push({name: 'categories'})
            }else {

                window.location.href = this.$root_path + 'login';
            }

        }
    },
    created() {
        
       this.loadData();
    }
}
</script>


