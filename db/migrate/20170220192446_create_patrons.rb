class CreatePatrons < ActiveRecord::Migration[5.0]
  def change
    create_table :patrons do |t|
      t.string :name
      t.string :personal_order
      t.integer :personal_price
      t.belongs_to :orderx
    end
  end
end
