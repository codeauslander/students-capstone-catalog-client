/* global Vue, VueRouter, axios */

var StudentIndexPage = {
  template: "#students-index-page",
  data: function() {
    return {
      students: [
        {
          capstones: []
        }
      ]
    };
  },
  created: function() {
    this.index();
  },
  methods: {
    index: function() {
      axios.get("/students").then(
        function(response) {
          console.log(response.data)
          this.students = response.data;
          console.log(this.students);
          console.log(this.students.capstones);
        }.bind(this)
      );
    }
  },
  computed: {}
};

var router = new VueRouter({
  routes: [{ path: "/", component: StudentIndexPage }],
  scrollBehavior: function(to, from, savedPosition) {
    return { x: 0, y: 0 };
  }
});

var app = new Vue({
  el: "#vue-app",
  router: router
});
