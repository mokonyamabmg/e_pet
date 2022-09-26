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
                    <div class="d-flex justify-content-start align-items-start flex-column">
                    <h4 class="dashboard_card__header">Create Variant</h4>
                    <h6>{{product.name}}</h6>
                    </div>
                    <div>
                    <button type="submit" class="btn submit_btn px-5">Submit</button>
                    </div>
                </div>
                <div class="row mt-5">
                    <div class="col-md-10">
                        <div class="form-group">
                            <label for="name">Variant Name</label>
                            <input placeholder="Example 5kg" v-model="variant_name" type="text" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="meta_description">SAP Product Code</label>
                            <input v-model="sap_product_code" type="text" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="meta_keywords">Web Product Code</label>
                            <input v-model="web_product_code" type="text" class="form-control">
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

export default {
    data() {
        return {
            variant_name: '',
            sap_product_code: '',
            web_product_code: '',
            product: null,
            is_loading: true
        }
    },
    methods: {
        submitForm() {
            this.is_loading = true;
            if(this.variant_name != '' && this.sap_product_code != '' && this.web_product_code != '')
            {

            const formData = {
                variant_name: this.variant_name,
                sap_product_code: this.sap_product_code,
                web_product_code: this.web_product_code,
                product_id: this.product.id
            }

            fetch(this.$root_path + 'api/variants/create', {
                method: "POST",
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
                        title: "Variant Added Successfully!",
                        });

                        return this.$router.push({name: 'variants', params: {id: this.product.id}});

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

                this.is_loading = false;
            })
            .catch(err => {
                console.log(err);
            });
        }
        })
        .catch(err => {
            console.log(err);
        });
    }
}
</script>
