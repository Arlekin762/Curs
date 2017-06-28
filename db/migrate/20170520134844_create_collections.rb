class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.string :name, null: false
      t.string :desc, null: false
      t.date :start_date, null: false
      t.date :finish_date, null: false

      t.timestamps null: false
    end
  end
end
