# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  # click event of search phrase
  $('#search_btn').click ->
    $form = $(this).parents('form')
    $form.find('.facet_select option').prop 'selected', false
    $form.submit()
    false
  # click event of facet select option
  $('.facet_select option').click ->
    if $(this).data('selected')
      $(this).prop 'selected', false
    $(this).parents('form').submit()
    return
  return