class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :nazwa
      t.string :rodzaj
      t.string :pokoj
      t.integer :type_id

      t.timestamps null: false
    end
    	add_foreign_key :rooms, :types
  end
end
