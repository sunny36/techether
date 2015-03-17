// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
function CountChecksE(which) {
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
function CountChecksE(which, id) {
    var maxchecked = 2;
    var count = 0;
    var box;
    if(document.getElementById('edit_subject_' + id).gp.checked == true) {
        if( which == "gp" ) { box = document.getElementById('edit_subject_' + id).gp; }
        count++;
    }
    if(document.getElementById('edit_subject_' + id).wd.checked == true) {
        if( which == "wd" ) { box = document.getElementById('edit_subject_' + id).wd; }
        count++;
    }
    if(document.getElementById('edit_subject_' + id).md.checked == true) {
        if( which == "md" ) { box = document.getElementById('edit_subject_' + id).md; }
        count++;
    }
    if(document.getElementById('edit_subject_' + id).f.checked == true) {
        if( which == "f" ) { box = document.getElementById('edit_subject_' + id).f; }
        count++;
    }
    if(document.getElementById('edit_subject_' + id).mo.checked == true) {
        if( which == "mo" ) { box = document.getElementById('edit_subject_' + id).mo; }
        count++;
    }
    if(document.getElementById('edit_subject_' + id).dm.checked == true) {
        if( which == "dm" ) { box = document.getElementById('edit_subject_' + id).dm; }
        count++;
    }
    if(document.getElementById('edit_subject_' + id).cms.checked == true) {
        if( which == "cms" ) { box = document.getElementById('edit_subject_' + id).cms; }
        count++;
    }
    if(document.getElementById('edit_subject_' + id).other.checked == true) {
        if( which == "other" ) { box = document.getElementById('edit_subject_' + id).other; }
        count++;
    }
    if(count > maxchecked) {
        box.checked = false;
        alert('Sorry, only ' + maxchecked + ' may be checked.');
    }
}

function rating_form(id) {
    var rate_button = document.getElementById('rating_' + id);
    rate_button.style.display = "none";
    var current_form = document.getElementById('rating_form_' + id);
    current_form.style.display = "inline";
}

$(document).ready(function() {
    $('select#rating_value').change(function() {
        $(this).closest('form').submit();
    });
});