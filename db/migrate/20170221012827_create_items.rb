class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.string :modifications
      t.integer :modifications_price
      t.belongs_to :patron
    end
  end
end
