class ChangingOrdertoOrderNum < ActiveRecord::Migration
  def change
    rename_column(:orders, :order, :order_num)
  end
end
