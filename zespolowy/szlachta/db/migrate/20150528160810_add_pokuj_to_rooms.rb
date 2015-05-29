class AddPokujToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :pokoj, :string
    add_column :rooms, :string, :string
  end
end
