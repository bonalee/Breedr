/* global Vue, Rails */
document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#app',
    data: {
      messages: [
        {matchId: 4, petId: 3, inversePetId: 5, body: "Hey how's it goin"},
        {matchId: 4, petId: 5, inversePetId: 3, body: "Hey not bad! How about yourself?"}
      ],
      newMessageBody: "",
      matchId: "",
      petId: "",
      inversePetId: ""
    },
    mounted: function() {
      console.log('mounted');
      this.petId = petId;
      this.matchId = matchId;
      this.inversePetId = inversePetId;
      Rails.ajax({
        url: "/api/v1/messages?match_id=" + this.matchId,
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
          data: "match_id=" + this.matchId + "&pet_id=" + this.petId + "&inverse_pet_id=" + this.inversePetId + "&body=" + this.newMessageBody,
          success: function(response) {
            console.log('createMessage success', response);
            this.messages.push(response);
            this.newMessageBody = "";
          }.bind(this)
        });
      }
    },
    computed: {

    }
  });
});