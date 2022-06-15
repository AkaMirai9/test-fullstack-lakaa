<template>
  <h2> Information sur la collecte du {{date}}</h2>
  <h3> Avec l'association {{assos}} </h3>
  <br>
  <h3> Différents indicateurs des collectes </h3>
  <div class="attribut-list">
    <template v-for="(attribut, index) in indicateurs" :key="index">
      <section class="attribut-card">
        <div class="name">
          Nom : {{ attribut.name }}
        </div>
        <div class="description">
          {{ attribut.desc }}
        </div>
        <div class="data">
          {{ attribut.datas }}
        </div>
      </section>
    </template>
  </div>
</template>

<script>
import axios from 'axios'

export default {
  data () {
    return {
      params: /collecte\/(?<id>[0-9]+)/.exec(location.href)[1],
      collecte: null,
      indicateurs: null,
      date: null,
      assos: null,
      attributs: []
    }
  },
  mounted () {
    const regex = /collecte\/(?<id>[0-9]+)/
    this.params = regex.exec(location.href)[1]
    axios.get('http://127.0.0.1:3000/collectes/' + this.params)
      .then(response => {
        console.log(response.data.date)
        this.collecte = response.data
        this.date = this.collecte.date
        this.assos = this.collecte.assos
      })
    axios.get('http://127.0.0.1:3000/attributs/' + this.params)
      .then(response => {
        console.log(response.data)
        this.indicateurs = response.data
      })
  }
}
</script>

<style scoped>
.attribut-list {
    display: flex;
    flex-direction: row;
    justify-content: flex-start;
    align-content: stretch;
    flex-wrap: wrap;
    margin: 30px;

}
.attribut-card {
    border: solid;
    border-radius: 20px;
    padding: 25px;
    font-size: 20px;
    margin: 30px;
}
</style>
