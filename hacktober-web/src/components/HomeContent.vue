<!--
Links of Knowledge:
  - https://vuejs.org/v2/guide/render-function.html#Nodes-Trees-and-the-Virtual-DOM
  - https://medium.com/js-dojo/vue-virtual-dom-13af62d2be41
  - https://blog.logrocket.com/accessing-the-virtual-dom-using-render-functions-in-vue-js/
-->
<script>
export default {
  name: 'HomeContent',
  data: () => {
    return {
      items: [
        'DOM = Document Object Model',
        'VDOM (Virtual DOM) describes what the vnode (Virtual Node) should be but is not necessarily a real node',
        'VNODEs have data options for functionality, attributes, props, slots, and more.',
        'VDOM Watches for changes/updates node and updates that node without rerendering the rest of the DOM (also called reconciliation)',
        'Limited event handlers. Logic can be built into handlers to check for more specific functionality (e.g. keyup.enter)',
        'h(tag, object) is shorthand for createElement(tag, object)',
        'v-model logic is manual in render functions using domProps option pointed at outside props (e.g. value: this.value)',
      ]
    }
  },
  methods: {
    handleListItemClick() {
      alert('Handling a click in my virtual node!');
    }
  },
  render(h) {
    return h('ul', {
      class: 'hack-home__list'
    }, this.items.map(item => {
        return h('li', {
          class: 'hack-home__list-item',
          on: {
            click: () => this.handleListItemClick()
          }
        },item)
    }))
  },
}
</script>

<style scoped>
.hack-home__list {
  padding: 0;
}

.hack-home__list-item {
  list-style: none;
  padding: 10px 20px;
  text-align: left;
}

.hack-home__list-item:hover {
  background-color: rgb(188, 214, 194);
  cursor: pointer;
}
</style>