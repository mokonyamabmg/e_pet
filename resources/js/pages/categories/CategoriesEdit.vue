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
                    <h4 class="dashboard_card__header">Edit Category</h4>
                    <div>
                    <button type="submit" class="btn submit_btn px-5">Update</button>
                    </div>
                </div>
                <div class="row mt-5">
                    <div class="col-md-10">
                        <div class="form-group">
                            <label for="name">Category Name</label>
                            <input v-model="category_name" type="text" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="meta_description">Meta Description</label>
                            <textarea v-model="meta_description" id="meta_description" class="form-control" rows="5"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="meta_keywords">Meta Keywords</label>
                            <textarea v-model="meta_keywords" id="meta_keywords" class="form-control" rows="6"></textarea>
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
            category_name: '',
            meta_description: '',
            meta_keywords: '',
            is_loading: false
        }
    },
    methods: {
        initialize_form() {
            this.category_name = this.category.name;
            this.meta_description = this.category.meta_description;
            this.meta_keywords = this.category.meta_keywords;
        },
        submitForm() {
            this.is_loading = true;
            if(this.category_name != '' && this.meta_description != '' && this.meta_keywords != '')
            {

            const formData = {
                name: this.category_name,
                meta_description: this.meta_description,
                meta_keywords: this.meta_keywords
            }

            fetch(this.$root_path + 'api/categories/update/' + this.category.id, {
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
                        title: "Category Added Successfully!",
                        });

                        return this.$router.push({name: 'categories'});

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
        fetch(this.$root_path + 'api/categories/getCategory/' + this.$route.params.id)
        .then(response => response.json())
        .then(data => {
            this.category = data.category;
            this.initialize_form();
            this.is_loading = false;
        })
        .catch(err => {
            console.log(err);
            this.is_loading = false;
        })
    }
}
</script>
