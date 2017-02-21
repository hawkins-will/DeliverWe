class CreatePatrons < ActiveRecord::Migration[5.0]
  def change
    create_table :patrons do |t|
      t.string :name
      t.string :personal_order
      t.float :personal_price
      t.belongs_to :order
    end
  end
end
