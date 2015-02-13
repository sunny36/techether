// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$( document ).ready(function() {

    $('input, textarea').each(function() {
        $(this).on('focus', function() {
            $(this).parent('.input').addClass('active');
        });

        if($(this).val() != '') $(this).parent('.input').addClass('active');
    });

});
