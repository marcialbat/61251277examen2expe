class AddOrderendatToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :order_end_at, :datetime
  end
end
