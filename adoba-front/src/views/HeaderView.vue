<template>
  <header class="header">
    <h1> Adoba | Application RSE</h1>
    <nav class="navbar">
      <router-link to="/">Accueil</router-link>
    </nav>
  </header>
</template>

<style>
.header {
  display: flex;
  flex-direction: row;
  background-color: #b6eec3;
  border-radius: 20px;
}
h1 {
    margin-left: 50px;
    margin-top: 25px;
}

nav {
  margin-left: 65%;
  font-size: 30px;
}

</style>
