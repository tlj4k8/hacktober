<template>
  <div class="app">
    <Home/>
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
  -moz-osx-font-smoothing: grayscale;
  -webkit-font-smoothing: antialiased;
  background-color: rgb(220, 238, 218);
  color: #2c3e50;
  padding: 4em 0;
  text-align: center;
}
</style>
