$(document).ready(function() {
   $("form#change_profile_form div.form_element input").attr("readonly", "readonly");
   $(".show_on_edit").css("display", "none");
});

$(document).ready(function() {
   $("#edit_form").click(function(){
       $("form#change_profile_form div.form_element input").attr("readonly", null);
       $(".show_on_edit").css("display", "inline-block");
       $(".show_on_edit").css("height", "0");
       $(".hide_on_edit").css("display", "none");
   }); 
});