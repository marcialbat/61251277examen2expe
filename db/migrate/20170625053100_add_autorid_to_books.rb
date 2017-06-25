class AddAutoridToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :autor_id, :integer
  end
end
