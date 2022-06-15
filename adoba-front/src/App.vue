<template>
  <HeaderView />
  <router-view />
  <FooterView />
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

a {
  text-decoration: none;
  color: #2c3e50;
}

nav a {
  font-weight: bold;
  color: #2c3e50;
  text-decoration: underline;
}

body {
  background-color: #f1f3f5;
}

</style>
