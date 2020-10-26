<template>
  <div class="hack-home">
    <img 
      alt="Hacktober Pumpkin"
      class='hack-home_image'
      src="../assets/hacktober-pumpkin.jpeg"
    >
    <h1 class="hack-home_title">{{ title }}</h1>
    <ImageGenerator/>
  </div>
</template>

<script>
import ImageGenerator from "./ImageGenerator";
export default {
  name: 'Home',
  components: {
    ImageGenerator
  },
  props: {
    title: String
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.hack-home {
  display: flex;
  flex-direction: column;
  justify-content: center;
  height: 100vh;
}
.hack-home_title {
  font-size: 96px;
  color: #F75F1C;
  width: 100%;
}
.hack-home_image {
  height: auto;
  margin: 20px auto;
  max-width: 300px;
}
</style>
