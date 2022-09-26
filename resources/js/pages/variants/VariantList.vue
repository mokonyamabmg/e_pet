<template>
    <div class="container py-5">
        <div class="container loader_container" v-if="is_loading">
            <div class="row">
            <div class="col-md-12">
                <div id="loader" style="width: 100%; height: 40vh; text-align: center;" class="mt-5">
                    <div class="lds-roller" style="margin-top: 30vh"><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div></div>
                </div>
            </div>
            </div>
        </div>
    <div class="row" v-if="!is_loading">
        <div class="col-md-12">
            <div class="card dashboard_card" style="min-height: 70vh;">
            <div class="d-flex justify-content-between align-items-center flex-wrap">
                <div class="d-flex justify-content-start align-items-start flex-column">
                    <h4 class="variant_card__header">{{ product.name }}</h4>
                    <h6 class="mt-4">Varaints</h6>
                </div>
                <div>
                <a @click="handle_variant_add" class="btn submit_btn">Add New Variant</a>
                    <button type="button" @click="$router.go(-1)" class="btn submit_btn px-5">Back</button>
                </div>
            </div>
            <div class="mt-3" v-if="variants.length > 0">
                <div class="card-body table-responsive">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                            <th scope="col"><strong>Name</strong></th>
                            <th scope="col" class="text-center"><strong>SAP Product Code</strong></th>
                            <th scope="col" class="text-center"><strong>Web Product Code</strong></th>
                            <th scope="col"  class="text-center"><strong>Actions</strong></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr v-for="variant in variants" :key="variant.id">
                            <th scope="row">{{variant.name}}</th>
                            <td class="text-center">{{variant.sap_product_code}}</td>
                            <td class="text-center">{{variant.web_product_code}}</td>
                            <td class="px-0 d-flex justify-content-center align-items-center flex-wrap">
                                <a @click="handle_variant_edit(variant.id)">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="#212529" class="bi bi-pencil-square" viewBox="0 0 16 16">
                                        <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                                        <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
                                    </svg>
                                </a>
                                <a @click="handle_variant_delete(variant.id)" class="ml-3">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="#212529" class="bi bi-trash-fill" viewBox="0 0 16 16">
                                        <path d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z"/>
                                    </svg>
                                </a>
                            </td>
                            </tr>
                        </tbody>
                        </table>
                </div>
            </div>
            <h6 class="mt-5" v-else>No Variants Availabe</h6>
        </div>
        </div>
        </div>
    </div>
</template>

<script>

export default {
    data() {
        return {
            product: null,
            is_loading: true,
            variants: []
        }
    },
    methods: {
        handle_variant_add() {
            this.$router.push({name: 'variant_create', params: {id: this.$route.params.id}});
        },
        handle_variant_edit(id) {
            this.$router.push({name: 'variant_edit', params: {id: id}});
        },
        handle_variant_delete(id) {
            this.is_loading = true;

            fetch(this.$root_path + 'api/variants/delete/' + id, {
                method: "DELETE",
                headers: {
                    "Content-Type": "application/json"
                }
            })
            .then(response => response.json())
            .then(data => {
                if(data.status == 'success')
                {
                    this.variants = this.variants.filter(variant => variant.id != id);

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
                        title: "Variant Deleted Successfully!",
                        });

                    this.is_loading = false;
                }
            })
            .catch(err => {
                console.log(err);
            });
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
            fetch(this.$root_path + 'api/products/getProduct/' + this.$route.params.id)
            .then(response => response.json())
            .then(data => {
                this.product = data.product;

                fetch(this.$root_path + 'api/variants/getProductVariants/' + this.product.id)
                .then(response => response.json())
                .then(data => {
                    this.variants = data.variants;

                    this.is_loading = false;
                })
            })
        }
    })
    .catch(err => {
        console.log(err);
    });
    }
}
</script>

<style scoped>
.variant_card__header {
    color: #4f4f4f;
    font-weight: 800;
    font-size: 1.1rem;
}
</style>
