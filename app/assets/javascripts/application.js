// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .

// CSS3 animated & responsive dropdown menu
// Latest version: https://github.com/catalinred/Animenu

(function(){
    var animenuToggle = document.querySelector('.animenu__toggle'),
        animenuNav    = document.querySelector('.animenu__nav'),
        hasClass = function( elem, className ) {
            return new RegExp( ' ' + className + ' ' ).test( ' ' + elem.className + ' ' );
        },
        toggleClass = function( elem, className ) {
            var newClass = ' ' + elem.className.replace( /[\t\r\n]/g, ' ' ) + ' ';
            if( hasClass(elem, className ) ) {
                while( newClass.indexOf( ' ' + className + ' ' ) >= 0 ) {
                    newClass = newClass.replace( ' ' + className + ' ' , ' ' );
                }
                elem.className = newClass.replace( /^\s+|\s+$/g, '' );
            } else {
                elem.className += ' ' + className;
            }
        },
        animenuToggleNav =  function (){
            toggleClass(animenuToggle, "animenu__toggle--active");
            toggleClass(animenuNav, "animenu__nav--open");
        }

    if (!animenuToggle.addEventListener) {
        animenuToggle.attachEvent("onclick", animenuToggleNav);
    }
    else {
        animenuToggle.addEventListener('click', animenuToggleNav);
    }
})()