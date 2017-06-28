@delete_one_ru_showroom = (link)->
  if confirm("Вы уверены?")
    link.parent().find("input[type=hidden].remove_fields").first().val("1")
    link.parent().parent().parent().parent().hide()
# Включаем все кнопки удаления
@del_all_rus_showroom = ->
  $('a.remove_showroom').on 'click', ->
    window.delete_one_ru_showroom($(this))
    false
  false
# Включаем кнопку добавления роли
@add_new_ru_showroom = ->
  $('#add_showroom_link').on 'click', ->
    new_id = new Date().getTime()
    regexp = new RegExp("new_showroom", "g")
    content = $(this).attr('data-content')
    content = content.replace(regexp, new_id)
    # Вставляем на страницу
    $(this).parent().after(content)
    panel = $(this).parent().parent().parent().find('.panel-info').first()
    # Включаем у новой роли кнопку удаления
    # Её раньше не было, поэтому при зарузке страницы она не включалась
    panel.find('a.remove_showroom').on 'click', ->
      window.delete_one_ru_showroom($(this))
      false
    false
# Запуск всего вышеописанного
ru_ready_showroom = ->
  window.add_new_ru_showroom()
  window.del_all_rus_showroom()
$(document).on 'page:load', ru_ready_showroom # Включаем при ajax обновлении страницы
$(document).ready ru_ready_showroom # Включаем при обычном обновлении страницы
# nested_finish
