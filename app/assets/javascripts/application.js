//= require rails-ujs
//= require jquery
//= require jquery-ui/widgets/datepicker
//= require bootstrap-sprockets
//= require_tree .
function openSlideMenu(){document.getElementById('main-content').style.marginLeft='250px';document.getElementById('side-menu').style.width='250px'}
function closeSlideMenu(){document.getElementById('main-content').style.marginLeft='0';document.getElementById('side-menu').style.width='0px'}
$(function(){$("#date").datepicker()})
