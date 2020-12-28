<template>
  <div class="hack-home">
    <HomeTitle title="Vue Virtual DOM"/>
    <HomeContent/>
  </div>
</template>
<script>
import HomeTitle from './HomeTitle.vue'
import HomeContent from './HomeContent';
export default {
  name: 'Home',
  components: {
    HomeTitle,
    HomeContent
  },
  render(h) {
    return h('div', {
      class: 'hack-home'
    })
  }
}
</script>

<style scoped>
.hack-home {
  display: flex;
  flex-direction: column;
  height: 100vh;
}
</style>
