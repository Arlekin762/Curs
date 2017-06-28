module CollectionsHelper
  def link_to_add_showroom(form)
    fields = form.fields_for(:showrooms, Showroom.new,
      :child_index => 'new_showroom') do |fr|
      render('collections/one_showroom_form', fr: fr, i: 'Новый')
    end
    link_to(?#, class: 'btn btn-info',
        id: 'add_showroom_link', data: {content: "#{fields}"}) do
      fa_icon("plus") + " Новый Зал"
    end
  end

  def link_to_remove_showroom(form)
    form.hidden_field(:_destroy, class: 'remove_fields') +
        link_to(?#, class: 'remove_fields remove_showroom') do
      fa_icon('times', title: 'Удалить зал') + ' Удалить'
    end
  end
end
