<template>
  <header class="header">
    <h1> Adoba </h1>
    <nav>
      <router-link to="/">Accueil</router-link>
    </nav>
  </header>
</template>

<style>
.header {
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  background-color: white;
  border-bottom: solid;
}
h1 {
    right: 0;
}
</style>
