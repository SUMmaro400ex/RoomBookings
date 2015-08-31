// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).on("ready page:load", function(){
  $("#user").click(function(){
    $("#userAdd").toggleClass("hidden");
    $(this).text(function(i, text){
      return text === "Add a User" ? "Hide Add a User" : "Add a User";
    })
  });
  $("#room").click(function(){
    $("#roomAdd").toggleClass("hidden");
    $(this).text(function(i, text){
      return text === "Add a Room" ? "Hide Add a Room" : "Add a Room";
    })
  });
  $("#booking").click(function(){
    $("#bookingAdd").toggleClass("hidden");
    $(this).text(function(i, text){
      return text === "Add a Booking" ? "Hide Add a Booking" : "Add a Booking";
    })
  });
});
