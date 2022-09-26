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
        <div class="row mt-5" v-if="!is_loading">
            <div class="col-md-12">
            <div class="card dashboard_card">
                <form @submit.prevent="submitForm">
                <div class="d-flex justify-content-between align-items-center flex-wrap">
                    <h4 class="dashboard_card__header">Edit Product</h4>
                    <div>
                    <button type="submit" class="btn submit_btn px-5">Update</button>
                    <button type="button" @click="$router.go(-1)" class="btn submit_btn px-5">Back</button>
                    </div>
                </div>
                <div class="row mt-5">
                    <div class="col-md-10">
                             <div class="form-group recipient_container mt-2">
                  <label for="recipient" class="cardless_label"
                    >Select Categories</label
                  >
                  <Multiselect
                    v-model="selected_categories"
                    mode="tags"
                    ref="multiselect"
                    :searchable="true"
                    :createTag="true"
                    :options="categories"
                    class="multiselect-green"
                  />
                  <!-- <input type="text" class="form-control cardless_input" name="company_name"> -->
                </div>
                        <div class="form-group">
                            <label for="name">Product Name</label>
                            <input v-model="product_name" type="text" class="form-control">
                        </div>
                    </div>
                </div>
            </form>
            </div>
            </div>
        </div>
    </div>
</template>

<script>
import Multiselect from "@vueform/multiselect";

export default {
    components: {
    Multiselect,
  },
    data() {
        return {
            is_loading: true,
            product_name: '',
            categories: [],
            selected_categories: [],
            product: null
        }
    },
    methods: {
        initialize_form() {
            this.product_name = this.product.name;

            this.selected_categories = this.product.categories.map(category => {
                    return category.id;
                });

                this.categories = this.categories.map((category) => {
                return {
                    value: category.id,
                    label: category.name
                    };
                });

                if (this.$refs.multiselect) {
                    this.$refs.multiselect.select(this.categories);
                }
        },
        submitForm() {
            this.is_loading = true;
            if(this.product_name != '' && this.selected_categories.length > 0)
            {

            const formData = {
                name: this.product_name,
                categories: this.selected_categories
            }

            fetch(this.$root_path + 'api/products/update/' + this.product.id, {
                method: "PATCH",
                headers: {
                    "Content-Type": "application/json",
                },
                body: JSON.stringify(formData),
            })
            .then(response => response.json())
            .then(data => {
                this.isLoading = false;

                if(data.status == 'success')
                {
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
                        title: "Product Updated Successfully!",
                        });

                        return this.$router.push({name: 'product', params: {id: data.product.id}});

                }
            })
            .catch(err => {
                console.log(err);
                this.isLoading = false;
            })


            }else {

                var toastMixin = Swal.mixin({
                    toast: true,
                    icon: "warning",
                    title: "General Title",
                    animation: false,
                    position: "top-right",
                    showConfirmButton: false,
                    timer: 2000,
                  });

                  toastMixin.fire({
                    animation: true,
                    title: "Make sure all fields are filled!",
                  });

                   this.is_loading = false;

            }
        }
    },
    created() {
        fetch(this.$root_path + 'api/categories/getCategories')
        .then(response => response.json())
        .then(data => {
            this.categories = data.categories;

            fetch(this.$root_path + 'api/products/getProduct/' + this.$route.params.id)
            .then(response => response.json())
            .then(data => {

                this.product = data.product;
                this.initialize_form();
                this.is_loading = false;

            })
        })
        .catch(err => {
            console.log(err);
        });
    }
}
</script>


