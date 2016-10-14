class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :phone
      t.string :full_name
      t.datetime :birthday

      t.timestamps
    end
  end
end
