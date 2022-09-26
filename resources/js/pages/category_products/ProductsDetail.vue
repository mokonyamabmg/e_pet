<template>
    <div class="container-fluid py-5">
        <div class="container loader_container" v-if="is_loading">
            <div class="row">
            <div class="col-md-12">
                <div id="loader" style="width: 100%; height: 40vh; text-align: center;" class="mt-5">
                    <div class="lds-roller" style="margin-top: 30vh"><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div></div>
                </div>
            </div>
            </div>
        </div>
        <div class="row mt-4" v-if="!is_loading">
            <div class="col-md-4 mt-5 px-4">
                <div v-if="has_variants">
                <h5 class="mt-4">Filter Variants</h5>
                <div class="form-group">
                    <select name="variant" id="variant" class="form-control" v-model="selected_variant" @change="handle_filtered_variants($event)">
                        <option value="all">All</option>
                        <option v-for="variant in filteredVariants" :key="variant.id" :value="variant.id">{{variant.variant_key}}</option>
                    </select>
                </div>
                </div>
                <hr class="mt-5 mb-4" v-if="has_variants">
                <div v-if="has_variants">
                    <h5 class="mt-5">Variants</h5>
                    <div class="mt-3 d-flex justify-content-start align-items-start flex-column">
                        <span class="variant_span" v-for="variant in filteredVariants" :key="variant.id">
                            {{ variant.variant_key }}
                        </span>
                    </div>
                </div>
                <h5 v-else>No Variants Available</h5>
                <br><br>
                <a @click="handle_variants" v-if="auth_user.role == 'Super Admin'" class="variants_link text-dark mt-5">Manage Variants</a>
            </div>
            <div class="col-md-8 px-4">
                <div class="row">
                    <div class="col-md-12 d-flex justify-content-between align-items-center flex-wrap">
                        <h5 class="text-center">{{ product.name }}</h5>
                        <button type="button" @click="$router.go(-1)" class="btn submit_btn px-5">Back</button>
                    </div>
                </div>
                <div class="row mt-5">
                    <div class="col-md-10 d-flex justify-content-center align-items-center flex-column" v-for="variant in select_filtered_variants" :key="variant.id">
                    <div class="card card-item mt-4">
                        <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                            <img src="http://127.0.0.1:8000/images/food.jpeg" class="img-fluid"/>
                            <a href="#!">
                            <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                            </a>
                        </div>
                        <div class="card-body">
                            <div>
                                {{ variant.name }}
                            </div>
                            <div class="d-flex justify-content-end align-items-center mt-3">
                            <div class="d-flex justify-content-center align-items-center">
                                <button type="button" v-if="auth_user.role == 'General User'" class="btn cart_btn d-flex justify-content-center align-items-center">
                                    <span class="pr-2">Add To Cart</span>
                                    <span>
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-cart-plus" viewBox="0 0 16 16">
                                            <path d="M9 5.5a.5.5 0 0 0-1 0V7H6.5a.5.5 0 0 0 0 1H8v1.5a.5.5 0 0 0 1 0V8h1.5a.5.5 0 0 0 0-1H9V5.5z"/>
                                            <path d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zm3.915 10L3.102 4h10.796l-1.313 7h-8.17zM6 14a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm7 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z"/>
                                            </svg>
                                    </span>
                                </button>
                            </div>
                            </div>
                        </div>
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
            auth_user: null,
            is_loading: true,
            product: null,
            variants: [],
            filteredVariants: [],
            has_variants: false,
            select_filtered_variants: [],
            selected_variant: 'all'
        }
    },
    methods: {
       handle_variants() {
           this.$router.push({name: 'variants', params: {id: this.product.id}});
       },
        handle_filtered_variants(event) {
            let filter = event.target.value;

            this.is_loading = true;
            setTimeout(() => {

            if(filter == 'all')
            {
                this.select_filtered_variants = this.variants;

            }else {

                this.select_filtered_variants = this.variants.filter((variant) => {
                    return variant.id == filter;
                });
            }

            this.is_loading = false;


            }, 500);
            
         
       }
    },
    computed: {

    },
    created() {
        fetch(this.$root_path + 'user_authenticated')
        .then(response => response.json())
        .then(data => {
        if(!data)
        {
            window.location.href = this.$root_path + 'login';

        }else {
        fetch(this.$root_path + 'authenticated_user')
        .then(response => response.json())
        .then(data => {
            this.auth_user = data;
            fetch(this.$root_path + 'api/products/getProduct/' + this.$route.params.id)
            .then(response => response.json())
            .then(data => {
                console.log(data);
                this.product = data.product;

                fetch(this.$root_path + 'api/variants/getProductVariants/' + this.product.id)
                .then(response => response.json())
                .then(data => {
                    this.variants = data.variants;
                    this.select_filtered_variants = this.variants;
                    this.filteredVariants = this.variants.map((variant) => {

                        let variant_name = variant.name.replace(this.product.name, '').trim();

                        if(variant_name != '')
                        {
                            this.has_variants = true;
                        }

                        return {...variant, variant_key: variant_name};
                    });

                    this.is_loading = false;
                })
            })
        })

            }
        })
        .catch(err => {
            console.log(err);
            this.is_loading = false;
        })
    }
}
</script>

<style scoped>
.variant_span {
    background-color: #212121;
    color: #fff;
    width: 14rem;
    margin-top: 0.5rem;
    padding: 0.5rem 1.2rem;
    border-radius: 2.3rem;
    cursor: pointer;

}

.variant_span:hover {
    background-color: #3d3c3c;
}

.cart_btn{
    background-color: transparent;
    border: #212121 solid 3px;
    padding: 0.8rem 1rem;
}

.variants_link{
    font-size: 1.1rem;
}
</style>