class AddRefToJobs < ActiveRecord::Migration
  def change
  	add_reference :jobs, :technician, foreign_key: true
  end
end
