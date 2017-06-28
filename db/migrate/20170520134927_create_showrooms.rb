class CreateShowrooms < ActiveRecord::Migration
  def change
    create_table :showrooms do |t|
      t.string :name, null: false
      t.references :collection, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
