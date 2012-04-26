$(document).ready(function() {
   $("form#change_profile_form div.form_element input").attr("readonly", "readonly");
   $(".show_on_edit").css("display", "none");
});

$(document).ready(function() {
   $("#edit_form").click(function(){
       $("form#change_profile_form div.form_element input").attr("readonly", null);
       $(".show_on_edit").css("display", "block");
       $(".hide_on_edit").css("display", "none");
   });
});