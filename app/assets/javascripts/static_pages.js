// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {
    $('.rightnav').hover(function() {
        $(this).siblings('.bottomBorder').addClass('bottomBorderAnimation');
    }, function() {
        $(this).siblings('.bottomBorder').removeClass('bottomBorderAnimation');
    });
    $('.rightnav').focus(function() {
        $(this).siblings('.bottomBorder').addClass('bottomBorderAnimation');
    }, function() {
        $(this).siblings('.bottomBorder').removeClass('bottomBorderAnimation');
    });
});
