# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
getSelections = (event) ->
  selected_churches = $("form input:checkbox:checked").parent().parent()

  if selected_churches.length < 1
    alert '[ERROR] You must select at least one church!'
    return

  if selected_churches.length > 8
    alert '[ERROR] You must limit your selections to a maximum of 8 churches!'
    return

  selected_churches_ids = []

  for i in selected_churches
    church_id = $(i).prop('id').substring(7)
    selected_churches_ids.push(church_id)

  $("#get_directions_submit").prop('name', 'selected_churches_ids').prop('value', selected_churches_ids)

$(document).ready ->
  $("form").on("submit", getSelections)
