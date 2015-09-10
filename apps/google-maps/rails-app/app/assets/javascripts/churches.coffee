# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
getSelections = (event) ->
  event.preventDefault();

  selected_churches = $("form input:checkbox:checked").parent().parent()

  if selected_churches.length < 1
    alert 'You must select at least one church!'
    return

  selected_churches_ids = []

  for i in selected_churches
    church_id = $(i).prop('id').substring(7)
    selected_churches_ids.push(church_id)

  $.ajax({
    type: "POST",
    url: "/churches/get_directions",
    data: { selected_churches_ids: selected_churches_ids },
  });

$(document).ready ->
  $("form").on("submit", getSelections)
