<template>
  <div class="app">
    <Home title="Hacking the Tobers!"/>
  </div>
</template>

<script>
import Home from './components/Home.vue'

export default {
  name: 'App',
  components: {
    Home
  }
}
</script>

<style>
* {
  font-family: Roboto, Helvetica, Arial, sans-serif;
}
body {
  margin: 0;
}
.app {
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  background-color: #000;
  padding: 4em 0;
}
</style>
