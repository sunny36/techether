// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function () {
    SetScrollableDivHeight($("#mainfooter"));
});
$(window).resize(function () {
    SetScrollableDivHeight($("#mainfooter"));
});
function SetScrollableDivHeight(div) {
    var top = div.position().top;
    var windowH = $(document).height();
    var remaining = windowH - top;

    div.height(remaining - 25);
}