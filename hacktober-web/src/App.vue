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
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  background-color: rgb(220, 238, 218);
  padding: 4em 0;
}
</style>
