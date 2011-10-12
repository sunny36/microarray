//= require jquery
//= require chosen.jquery
$(function(){ 
  $("select#experiments").chosen();

  $("select#experiments").change(function() {
    window.location.href = '/experiments/' + $(this).val() + '/images'
  });
});

