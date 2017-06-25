class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :client
      t.decimal :total
      t.integer :quantity

      t.timestamps
    end
  end
end
