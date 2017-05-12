class RemoveInvoiceFromPayments < ActiveRecord::Migration[5.0]
  def change
    remove_column :payments, :invoice, :string
  end
end
