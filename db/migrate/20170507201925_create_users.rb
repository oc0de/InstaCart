class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :zip_code
      t.string :ref_code

      t.timestamps
    end
  end
end
