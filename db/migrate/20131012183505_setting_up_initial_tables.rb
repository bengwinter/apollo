class SettingUpInitialTables < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :age
      t.string :gender
      t.string :location
      t.string :image
      t.string :type
      t.timestamps
    end
  end

  def down
      drop_table :users
  end
end
