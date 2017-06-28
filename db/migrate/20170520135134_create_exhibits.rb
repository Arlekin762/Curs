class CreateExhibits < ActiveRecord::Migration
  def change
    create_table :exhibits do |t|
      t.string :name
      t.string :descr
      t.float :price
      t.integer :age
      t.string :size
      t.text :condit
      t.references :collection, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
