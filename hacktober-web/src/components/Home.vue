<template>
  <div class="home">
    <img 
      alt="Hacktober Pumpkin"
      class='home_image'
      src="../assets/hacktober-pumpkin.jpeg"
    >
    <h1 class="home_title">{{ title }}</h1>
  </div>
</template>

<script>
export default {
  name: 'Home',
  props: {
    title: String
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.home {
  display: flex;
  flex-direction: column;
  justify-content: center;
  height: 100vh;
  width: 100vw;
}
.home_title {
  font-size: 96px;
  color: #F75F1C;
  width: 100%;
}
.home_image {
  align-self: center;
  height: auto;
  max-width: 300px;
  width: 100%;
}
</style>
