class RemoveQtyFromDrugs < ActiveRecord::Migration[5.0]
  def change
    remove_column :drugs, :qty, :integer
  end
end
