class AddRefsToMessages < ActiveRecord::Migration
  def change
  	add_reference :messages, :task, foreign_key: true
  	add_reference :messages, :technician, foreign_key: true
  	add_reference :messages, :tenant, foreign_key: true
  	add_reference :messages, :property_owner, foreign_key: true
  end
end
