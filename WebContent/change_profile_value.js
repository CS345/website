$(document).ready(function() {
    $("form#change_profile_form div.form_element input").attr("readonly", "readonly");
    $(".show_on_edit").css("display", "none");

    //click edit profile button
    $("input#edit_profile[type=button]").click(function(){
        $("form#change_profile_form div.form_element input").attr("readonly", null);
        $("form#change_profile_form div.form_element input:not([type='button']):not([type='submit'])").css("background-color", "white");
        $("form#change_profile_form div.form_element input:not([type='button']):not([type='submit'])").css("border-style", "solid"); //makes border visible
        $(".show_on_edit").css("display", "block");
        $(".hide_on_edit").css("display", "none");
    });
});