class AddRefToRooms < ActiveRecord::Migration
  def change
  	add_reference :rooms, :building, foreign_key: true
  end
end
