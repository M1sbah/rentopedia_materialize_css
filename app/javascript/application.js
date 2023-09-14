// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

//= require jquery3
//= require jquery_ujs




$(document).on('turbo:load', function () {
	$(".dropdown-trigger").dropdown();
});

$(document).on('turbo:load', function(){
  $('.sidenav').sidenav();
});


$(document).on('turbo:load', function() {
  setTimeout(function(){
 		$(".messages").hide(500)
 	},5000)
});

$(document).on('turbo:load', function(){
	M.updateTextFields();
	$('.textarea1').val('');
	M.textareaAutoResize($('.textarea1'));
});