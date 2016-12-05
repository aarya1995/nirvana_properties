class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.string :status
      t.string :job_taken

      t.timestamps null: false
    end
  end
end
