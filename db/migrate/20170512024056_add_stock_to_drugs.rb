class AddStockToDrugs < ActiveRecord::Migration[5.0]
  def change
    add_column :drugs, :stock, :integer
  end
end
