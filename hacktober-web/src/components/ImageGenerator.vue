<template>
  <div class='hack-dog'>
    <button class='hack-dog_button' @click='fetchDogImage'>Click if you dare...</button>
    <img v-if='this.image' class='hack-dog_image' alt="Dog Picture" :src="this.image">
  </div>
</template>

<script>
import axios from "axios";
export default {
  name: 'ImageGenerator',
  props: {
    title: String
  },
  data: () => {
    return {
      image: ''
    }
  },
  methods: {
    fetchDogImage() {
      axios.get('https://dog.ceo/api/breeds/image/random')
      .then(response => {
        this.image = response.data.message;
      })
      .catch(error => {
        console.log(error);
      })
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.hack-dog {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-evenly;
}
.hack-dog_button {
  background-color: #85E21F;
  border-radius: 10px;
  border-style: none;
  color: #000;
  font-size: 24px;
  width: 15rem;
  height: 5rem;
}
.hack-dog_image {
  border-style: solid;
  border-color: #881EE4;
  border-radius: 10px;
  height: auto;
  max-width: 400px;
  
}
</style>