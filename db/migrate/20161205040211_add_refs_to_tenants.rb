class AddRefsToTenants < ActiveRecord::Migration
  def change
  	add_reference :tenants, :building, foreign_key: true
  	add_reference :tenants, :room, foreign_key: true
  end
end
