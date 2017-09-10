App.activity = App.cable.subscriptions.create("ActivityChannel", {
  connected: function() {
    // Called when the subscription is ready for use on the server
  },

  disconnected: function() {
    // Called when the subscription has been terminated by the server
  },

  received: function(data) {
    app.__vue__.messages.unshift(data);
  }
});
