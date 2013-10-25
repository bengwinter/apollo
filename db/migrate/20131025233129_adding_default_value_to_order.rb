class AddingDefaultValueToOrder < ActiveRecord::Migration
  def change
    remove_column :orders, :order
    add_column :orders, :order, default: 0
  end
end
