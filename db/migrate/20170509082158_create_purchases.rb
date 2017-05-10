class CreatePurchases < ActiveRecord::Migration[5.0]
  def change
    create_table :purchases do |t|
      t.date :date
      t.integer :status

      t.timestamps
    end
  end
end
