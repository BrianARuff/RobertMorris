
//= require rails-ujs
//= require jquery
//= require jquery-ui/widgets/datepicker
//= require bootstrap-sprockets
//= require_tree .


//open slide menu (mobile view only), located in application.html.erb
function openSlideMenu() {
	document.getElementById('main-content').style.marginLeft = '250px';
	document.getElementById('side-menu').style.width = '250px';
}

//close side menu (mobile view only), located in application.html.erb
function closeSlideMenu(){
	document.getElementById('main-content').style.marginLeft = '0';
	document.getElementById('side-menu').style.width = '0px';
}

// date-picker, located in speakings/_form.html.erb, bookings/_form.html.erb
$(function() {
	$( "#date" ).datepicker();
});