// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
function CountChecks(which) {
    var maxchecked = 2;
    var count = 0;
    var box;
    if(document.getElementById("new_subject").gp.checked == true) {
        if( which == "gp" ) { box = document.getElementById("new_subject").gp; }
        count++;
    }
    if(document.getElementById("new_subject").wd.checked == true) {
        if( which == "wd" ) { box = document.getElementById("new_subject").wd; }
        count++;
    }
    if(document.getElementById("new_subject").md.checked == true) {
        if( which == "md" ) { box = document.getElementById("new_subject").md; }
        count++;
    }
    if(document.getElementById("new_subject").f.checked == true) {
        if( which == "f" ) { box = document.getElementById("new_subject").f; }
        count++;
    }
    if(document.getElementById("new_subject").mo.checked == true) {
        if( which == "mo" ) { box = document.getElementById("new_subject").mo; }
        count++;
    }
    if(document.getElementById("new_subject").dm.checked == true) {
        if( which == "dm" ) { box = document.getElementById("new_subject").dm; }
        count++;
    }
    if(document.getElementById("new_subject").cms.checked == true) {
        if( which == "cms" ) { box = document.getElementById("new_subject").cms; }
        count++;
    }
    if(document.getElementById("new_subject").other.checked == true) {
        if( which == "other" ) { box = document.getElementById("new_subject").other; }
        count++;
    }
    if(count > maxchecked) {
        box.checked = false;
        alert('Sorry, only ' + maxchecked + ' may be checked.');
    }
}