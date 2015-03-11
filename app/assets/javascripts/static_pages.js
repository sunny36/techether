// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function () {
    SetScrollableDivHeight($("#mainfooter"));
    $("#checktext").bind("Check if input empty", function() {
        var value = $.trim($(this).val());
        if (value.length == 0) {
            $("#mainbutt").val("Browse Subjects");
        }
        else {
            $("#mainbutt").val("Search Subjects");
        }
    });
});
$(window).resize(function () {
    SetScrollableDivHeight($("#mainfooter"));
});
function SetScrollableDivHeight(div) {
    if (div.length) {
        var top = div.position().top;
        var windowH = $(document).height();
        var remaining = windowH - top;

        div.height(remaining - 25);
    }
}
