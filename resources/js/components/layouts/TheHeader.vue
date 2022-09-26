<template>
<div class="header py-4 px-5 text-center bg-light">
    <div class="d-flex justify-content-start align-items-center" v-if="auth_user">
        <router-link to="/categories">Categories</router-link>
        <router-link v-if="auth_user.role == 'Super Admin'" to="/categories/create">Add Category</router-link>
        <router-link v-if="auth_user.role == 'Super Admin'" to="/products/create">Add Product</router-link>
    </div>
</div>
</template>

<script>

export default {
    data() {
        return {
            is_authenticated: false,
            auth_user: null
        }
    },
    created() {
    fetch(this.$root_path + 'user_authenticated')
    .then(response => response.json())
    .then(data => {
        this.is_authenticated = data;
        fetch(this.$root_path + 'authenticated_user')
            .then(response => response.json())
            .then(data => {
                this.auth_user = data;
            })
        })
        .catch(err => {
            console.log(err);
        })
    }
}
</script>

<style scoped>
    .header {
        background-color: #fff !important;
    }

    .header a {
  text-decoration: none;
  color: #000;
  display: inline-block;
  padding: 0.75rem 2.5rem;

}

a:active,
a:hover,
a.router-link-active {
    font-weight: 800;
}

</style>
