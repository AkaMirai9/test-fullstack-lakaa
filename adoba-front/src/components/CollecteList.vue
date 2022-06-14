<template>
  <div class="page">
    <div class="collect-list">
      <template v-for="(collecte, index) in collectes" :key="index">
        <section class="collect-card">
          <div class="Association">
            Association : {{ collecte.assos }}
          </div>
          <div>
            <p class="Date">
              Date de collecte : {{ collecte.date }}
            </p>
          </div>
        </section>
      </template>
    </div>
    <div class="add-collect">
      <form class="add-form">
        <h4> Ajouter une collecte </h4>
        <label>Nom de l'association : <input type="text" v-model="this.formName" id="assosName" name="Nom de l'association" required size="30"></label><br>
        <label>Date de la collecte : <input type="date" v-model="this.formDate" id="collectDate" name="Date de la collecte" required size="30"></label><br>
        <input type="button" id="formButton" value="Submit" v-on:click="addCollect">
      </form>
    </div>
  </div>
</template>

<script>
// import { ref } from 'vue'
// import CollecteCard from './CollecteCard.vue'
import axios from 'axios'

export default {
  // components: { CollecteCard },
  data () {
    return {
      collectes: null,
      formName: null,
      formDate: null
    }
  },
  mounted () {
    axios.get('http://127.0.0.1:3000/collectes')
      .then(response => {
        console.log(response.data)
        this.collectes = response.data
      })
  },
  methods: {
    addCollect: function () {
      if (this.formName === null) {
        alert('Nom de l\'association est vide \n Veuillez entrer un nom valide')
        return
      }
      if (this.formDate === null) {
        alert('Vous n\'avez pas selectionné la date de la collecte')
        return
      }
      const assos = this.formName
      const date = this.formDate
      this.formName = ''
      this.dateName = ''

      this.pushCollect({
        assos: assos,
        date: date
      })
    },
    pushCollect: function (elem) {
      const assos = elem.assos
      const date = elem.date
      axios.post('http://127.0.0.1:3000/collectes', null, {
        params: {
          assos,
          date
        }
      })
      this.$router.go()
    }
  }
}
</script>

<style scoped>
.collect-list {
    display: flex;
    flex-direction: row;
    justify-content: flex-start;
    align-content: stretch;
    flex-wrap: wrap;
    margin: 30px;

}
.collect-card {
    border: solid;
    border-radius: 20px;
    padding: 25px;
    font-size: 20px;
    margin: 30px;
}

.add-collect {
  margin: 60px;
  border: solid;
  border-radius: 20px;
  padding: 25px;
  font-size: 20px;
}

.page {
    display: flex;
    flex-direction: column;
    justify-content: space-between;
}
</style>
