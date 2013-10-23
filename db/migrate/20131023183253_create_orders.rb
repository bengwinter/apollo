class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :order
      t.timestamps
      t.belongs_to :song, index:true
      t.belongs_to :playlist, index:true
    end
  end
end
