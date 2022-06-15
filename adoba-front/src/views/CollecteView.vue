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
    <div class="add-attribute">
      <form class="add-form">
        <h4> Ajouter un attribut </h4>
        <label> Nom de l'attribut : <input type="text" v-model="this.formName" id="attributName" name="Nom de l'attribut" required size="50"></label><br>
        <label> Description de l'attribut : <input type="text" v-model="this.formDesc" id="attributDesc" name="Description de l'attribut" required size="50" height="10"></label><br>
        <label> Valeur de l'attribut : <input type="text" v-model="this.formData" id="attributData" name="Valeur de l'attribut" required size="50"></label><br>
        <input type="button" id="formButton" value="Submit" v-on:click="addAttribut">
      </form>
    </div>
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
      attributs: [],
      formName: null,
      formDesc: null,
      formData: null
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
  },
  methods: {
    addAttribut: function () {
      if (this.formName === null) {
        alert('Nom de l\'attribut est vide \n Veuillez entrer un nom valide')
        return
      }
      if (this.formData === null) {
        alert('Vous n\'avez pas assigné de valeur à l\'attribut')
        return
      }
      if (this.formDesc === null) {
        alert('Vous n\'avez pas décrit l\'attribut')
        return
      }

      this.pushAttribut({
        name: this.formName,
        desc: this.formDesc,
        datas: this.formData
      })

      this.formName = ''
      this.formDesc = ''
      this.formData = ''
    },
    pushAttribut: async function (elem) {
      const name = elem.name
      const desc = elem.desc
      const datas = elem.datas
      const collecteid = parseInt(/collecte\/(?<id>[0-9]+)/.exec(location.href)[1])
      console.log(collecteid)
      await axios.post('http://127.0.0.1:3000/attributs', null, {
        params: {
          name,
          desc,
          datas,
          collecteid
        }
      })
      this.$router.go()
    }
  }
}
</script>

<style scoped>
.attribut-list {
    display: flex;
    flex-direction: column;
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
