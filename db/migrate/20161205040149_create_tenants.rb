class CreateTenants < ActiveRecord::Migration
  def change
    create_table :tenants do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :isApproved

      t.timestamps null: false
    end
  end
end
