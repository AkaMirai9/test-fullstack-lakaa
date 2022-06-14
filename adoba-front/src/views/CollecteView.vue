<template>
    <h2> Information sur la collecte du </h2>
</template>

<script>
import axios from 'axios'

export default ({
  data () {
    return {
      params: this.$route.params.id,
      collecte: null
    }
  },
  mounted () {
    axios.get('http://127.0.0.1:3000/collectes/' + this.params)
      .then(response => {
        console.log(response.data)
        this.collecte = response.data
      })
  }
})
</script>
