if (u1 = User.find_by_email('admin@localhost')).nil?
  u1 = User.create!(password: 'qwerty', password_confirmation: 'qwerty',
    email: 'admin@localhost')
  u1.activate!
end
if (u2 = User.find_by_email('user@localhost')).nil?
  u2 = User.create!(password: 'qwerty', password_confirmation: 'qwerty',
    email: 'user@localhost')
  u2.activate!
end
r1, r2 = Role.create_main_roles
ru1 = RoleUser.create(role: r1, user: u1)
ru2 = RoleUser.create(role: r2, user: u2)

#------------->Коллекция

col1 = Collection.create!(name: 'Жара', desc: 'Солнце', start_date: Time.now, finish_date: Time.now)
col2 = Collection.create!(name: 'Холод', desc: 'Зима', start_date: Time.now, finish_date: Time.now)
col3 = Collection.create!(name: 'Модерн', desc: 'Модерн', start_date: Time.now, finish_date: Time.now)

#------------->Выставочный Зал

sr1 = Showroom.create!(name: 'Хол1', collection_id: col1.id)
sr2 = Showroom.create!(name: 'Хол2', collection_id: col2.id)
sr3 = Showroom.create!(name: 'Хол3', collection_id: col2.id)

#------------->Экспонаты

ex1= Exhibit.create!(name: 'Экспонаты1', descr: 'Экспонаты Солнце', price: '10000', age: '7', size: '450/500', condit: '12345', collection_id: col1.id)
ex2= Exhibit.create!(name: 'Экспонаты2', descr: 'Экспонаты Зима', price: '7000', age: '4', size: '300/250', condit: '23456', collection_id: col3.id)
ex3= Exhibit.create!(name: 'Экспонаты3', descr: 'Экспонаты Модерн', price: '12000', age: '9', size: '750/500', condit: '34567', collection_id: col3.id)
