class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.datetime :birthday
      t.integer :height
      t.string :email
      t.string :firstname
      t.string :lastname
      t.string :password_hash
      t.string :password_salt

      t.timestamps
    end
  end
end
