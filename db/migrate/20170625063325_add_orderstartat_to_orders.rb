class AddOrderstartatToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :order_start_at, :date
  end
end
