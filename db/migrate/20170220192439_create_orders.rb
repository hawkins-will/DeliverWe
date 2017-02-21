class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :head_patron
      t.float :total_price
      t.float :tip
      t.belongs_to :restaurant
    end
  end
end
