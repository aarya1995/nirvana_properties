class AddRefsToTasks < ActiveRecord::Migration
  def change
  	add_reference :tasks, :job, foreign_key: true
  	add_reference :tasks, :tenant, foreign_key: true
  	add_reference :tasks, :room, foreign_key: true
  	add_reference :tasks, :property_owner, foreign_key: true
  end
end
