/* global Vue, Rails */
document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#app',
    data: {
      messages: [{pet_id: 3, body: "Hello"}],
      newMessageBody: ""
    },
    mounted: function() {
      console.log('mounted');
      Rails.ajax({
        url: "/api/v1/messages",
        type: "get",
        success: function(response) {
          console.log('success', response);
          this.messages = response;
        }.bind(this)
      });
    },
    methods: {
      createMessage: function() {
        Rails.ajax({
          url: "/api/v1/messages",
          type: "post",
          data: "body=" + this.newMessageBody,
          success: function(response) {
            console.log('createMessage success', response);
            this.newMessageBody = "";
          }.bind(this)
        });
      }
    },
    computed: {

    }
  });
});