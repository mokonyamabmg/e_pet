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
    <div class="container" v-if="!is_loading">
        <div class="row">
            <div class="col-md-12">
                <h3 class="text-center">{{category.name}}</h3>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 d-flex justify-content-end align-items-end">
                <button type="button" @click="navigate_back" class="btn submit_btn px-5">Back</button>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4" v-for="product in displayedProducts" :key="product.id">
                <div class="card card-item mt-3">
                    <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                        <img src="http://127.0.0.1:8000/images/food.jpeg" class="img-fluid"/>
                        <a href="#!">
                        <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                        </a>
                    </div>
                    <div class="card-body">
                        <div>
                            {{ product.name }}
                        </div>
                        <div class="d-flex justify-content-end align-items-center mt-4">
                        <a @click="show_product(product.id)" v-if="auth_user.role == 'General User'">view product</a>                       
                         <div class="d-flex justify-content-center align-items-center" v-else>
                             <span class="px-1">
                                 <a @click="show_product(product.id)">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="26" height="26" fill="currentColor" class="bi bi-eye-fill" viewBox="0 0 16 16">
                                        <path d="M10.5 8a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z"/>
                                        <path d="M0 8s3-5.5 8-5.5S16 8 16 8s-3 5.5-8 5.5S0 8 0 8zm8 3.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7z"/>
                                    </svg>
                                 </a>
                             </span>
                              <span class="px-1">
                                  <a @click="edit_product(product.id)">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="26" height="26" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                                        <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                                        <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
                                        </svg>
                                  </a>
                             </span>
                              <span class="px-1">
                                  <a @click="delete_product(product.id)">
                                 <svg xmlns="http://www.w3.org/2000/svg" width="26" height="26" fill="currentColor" class="bi bi-trash-fill" viewBox="0 0 16 16">
                                    <path d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z"/>
                                    </svg>
                                    </a>
                             </span>
                         </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row mt-5">
            <div class="col-md-12">
                    <nav aria-label="Page navigation example" class="ml-2" v-if="products.length > 4">
                        <ul class="pagination">
                            <li class="page-item">
                            <button type="button" class="page-link" v-if="page != 1" @click="page--"> Previous </button>
                            </li>
                            <li class="page-item">
                            <button type="button" class="page-link" v-for="pageNumber in pages.slice(page-1, page+5)" @click="page = pageNumber" :key="pageNumber"> {{pageNumber}} </button>
                            </li>
                            <li class="page-item">
                            <button type="button" @click="page++" v-if="page < pages.length" class="page-link"> Next </button>
                            </li>
                        </ul>
                    </nav> 
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
            is_loading: true,
            auth_user: null,
            category: null,
            page: 1,
            perPage: 6,
            pages: []
        }
    },
    methods: {
        navigate_back() {
            this.$router.push({name: 'categories'});
        },
        setPages () {
            if(this.products.length > 0)
            {

                let numberOfPages = Math.ceil(this.products.length / this.perPage);
                this.pages = [];
                for (let index = 1; index <= numberOfPages; index++) {
                    this.pages.push(index);
                }
            }
        },
        paginate (products) {
        let page = this.page;
        let perPage = this.perPage;
        let from = (page * perPage) - perPage;
        let to = (page * perPage);
        return  products.slice(from, to);
        },
        show_product(id) {
            this.$router.push({name: 'product', params: {id: id}});
        },
        edit_product(id) {
            this.$router.push({name: 'product_edit', params: {id: id}});
        },
        delete_product(id) {
            this.is_loading = true;

            fetch(this.$root_path + 'api/products/delete/' + id, {
                method: "DELETE",
                headers: {
                    "Content-Type": "application/json"
                }
            })
            .then(response => response.json())
            .then(data => {
                if(data.status == 'success')
                {
                    this.products = this.products.filter(product => product.id != id);

                    var toastMixin = Swal.mixin({
                        toast: true,
                        icon: "success",
                        title: "General Title",
                        animation: false,
                        position: "top-right",
                        showConfirmButton: false,
                        timer: 2000,
                        });

                        toastMixin.fire({
                        animation: true,
                        title: "Product Deleted Successfully!",
                        });

                    this.is_loading = false;
                }
            })
            .catch(err => {
                console.log(err);
            });
        }
    },
    computed: {
        displayedProducts () {
            return this.paginate(this.products);
        }
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
            fetch(this.$root_path + 'api/categories/getCategory/' + this.$route.params.id)
            .then(response => response.json())
            .then(data => {
                this.category = data.category;
                fetch(this.$root_path + 'api/categories/getProducts/' + this.category.id)
                .then(response => response.json())
                .then(data => {
                    console.log(data);
                    this.products = data.products;
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
    },
    watch: {
          products () {
            this.setPages();
        }
    }
}
</script>

<style scoped>
    button.page-link {
  display: inline-block;
}
button.page-link {
    font-size: 15px;
    font-weight: 500;
    padding: .8rem .85rem !important;
    margin-left: -1px;
    line-height: 1.25;

}
button.page-link:hover {
    text-decoration: none !important;
}
.offset{
  width: 500px !important;
  margin: 20px auto;  
}
</style>