let app = new Vue({
  el: '#app',
  data: {
    message: 'Hello Vue!',
  },
})

let app2 = new Vue({
  el: '#app-2',
  data: {
    message: 'You loaded this page on ' + new Date().toLocaleString(),
  },
})

let app3 = new Vue({
  el: '#app-3',
  data: {
    seen: true,
  },
})

let app4 = new Vue({
  el: '#app-4',
  data: {
    todos: [
      { text: 'Learn Javascript!' },
      { text: 'Learn Vue!' },
      { text: 'Build Something Awesome!' },
    ]
  }
})

let app5 = new Vue({
  el: '#app-5',
  data: {
    message: "Hello Vue.js",
  },
  methods: {
    reverseMessage: function() {
      this.message = this.message.split('').reverse().join('')
    }
  }

})