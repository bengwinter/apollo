class AddingFollowsTable < ActiveRecord::Migration
  def up
    create_table :follows do |t|
      t.string :username      
      t.timestamps
    end
  end

  def down
      drop_table :follows
  end
end