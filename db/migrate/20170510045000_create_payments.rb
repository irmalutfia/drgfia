class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.decimal :remain
      t.date :date
      t.decimal :total
      t.string :invoice

      t.timestamps
    end
  end
end
