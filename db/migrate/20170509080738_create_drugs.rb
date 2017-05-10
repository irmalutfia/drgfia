class CreateDrugs < ActiveRecord::Migration[5.0]
  def change
    create_table :drugs do |t|
      t.string :name
      t.integer :qty
      t.integer :unit
      t.decimal :price_per_unit

      t.timestamps
    end
  end
end
