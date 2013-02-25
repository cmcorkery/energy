// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

  $(document).ready(function(){
     if($('#project_status').val() != "Completed"){
      $(".to_hide").hide();
      //$(".to_disable").attr('disabled','disabled');
      //$(".to_disable").val("Linked to Usage Meter")
     }
     else{
        $(".to_hide").slideDown(500)
        //$(".to_disable").removeAttr('disabled');
     }

     $('#project_status').change(function(){
        if($(this).val() != "Completed"){
          $(".to_hide").slideUp(500);
          //$(".to_disable").attr('disabled','disabled');
        }
        else{
          $(".to_hide").slideDown(500);
          $(".to_disable").removeAttr('disabled');
        }
     })
  });