class RemoveRemainFromPayments < ActiveRecord::Migration[5.0]
  def change
    remove_column :payments, :remain, :decimal
  end
end
