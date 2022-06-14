<template>
    <h2> Toutes nos Collectes </h2>
    <CollecteList />
</template>

<script>
import CollecteList from '../components/CollecteList.vue'

export default {
  components: {
    CollecteList
  }
}
</script>

<style scoped>
 h2 {

    text-align: start;
    padding-left: 35px;
}

.Magasin p {

    text-align: start;
    padding-left: 35px;
}
</style>
