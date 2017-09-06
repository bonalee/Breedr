/* global Vue */
document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#app',
    data: {
      message1: 'Pending Matches',
      message2: 'Confirmed Matches',
      matches: []
    },
    mounted: function() {

    },
    methods: {
      requestMatch: function() {
        var newMatch = {
          status: false
        };
      },
      confirmMatch: function() {
        
      }
    },
    computed: {

    }
  });
});