class CreatePropertyOwners < ActiveRecord::Migration
  def change
    create_table :property_owners do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.string :phone

      t.timestamps null: false
    end
  end
end
