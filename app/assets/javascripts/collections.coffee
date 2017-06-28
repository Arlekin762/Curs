# Обработка кнопки добавления залов
add_showrooms = ->
  $("#add-exist-showroom").click ->
    val = $("#showrooms-select").val()
    if($("#showroom-" + val).length == 0)
      text = $("#showrooms-select option:selected").text()
      $("<div class='showroom-elem' id='showroom-" + val + "'>" + text + "</div>").appendTo($("#list-exist-showrooms"))
      $("#collection_showroom_ids").val($("#collection_showroom_ids").val() + ' ' + val)

remove_showrooms = ->
  $("#remove-exist-showroom").click ->
    val = $("#showrooms-select").val()
    $("#showroom-" + val).remove()
    $("#collection_showroom_ids").val( $("#collection_showroom_ids").val().replace(val, '') )

actions_showroom = ->
  add_showrooms()
  remove_showrooms()

$(document).ready actions_showroom
$(document).on 'page:load', actions_showroom
