<template>
  <div class="layout">
    <HeaderView />
    <router-view />
    <FooterView />
  </div>
</template>

<script>
import FooterView from './views/FooterView.vue'
import HeaderView from './views/HeaderView.vue'

export default ({
  components: {
    HeaderView,
    FooterView
  }
})
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

nav {
  padding: 30px;
}

nav a {
  font-weight: bold;
  color: #2c3e50;
}

a {
  text-decoration: none;
  color: #2c3e50;
}

</style>
