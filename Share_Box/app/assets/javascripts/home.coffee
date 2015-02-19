# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $( ".share a" ).click ->
    a = this;
    $("#invitation_form").attr("title", "Share '" + $(a).attr("folder_name") + "' with others" )
    $("#ui-dialog-title-invitation_form").text("Share '" + $(a).attr("folder_name") + "' with others")
    $("#folder_id").val($(a).attr("folder_id"))
    $('#invitation_form').dialog
      height: 300
      width: 600
      modal: false
      buttons:
        'Share': ->
          #get the url to post the form data to
          post_url = $('#invitation_form form').attr('action')
          #serialize the form data and post it the url with ajax
          $.post post_url, $('#invitation_form form').serialize(), null, 'script'
          false
        Cancel: ->
          $(this).dialog 'close'
          return
      close: ->
    return false;





