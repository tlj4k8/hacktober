<script>
export default {
  name: 'HomeTitle',
  props: {
    title: String
  },
  render(h) {
    return h('h2', {
      class: 'hack-home_title',
    },this.title)
  }
}
</script>

<style scoped>
.hack-home_title {
  font-size: 72px;
  font-weight: 300;
  width: 100%;
}
</style>
