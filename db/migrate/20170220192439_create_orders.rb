class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.float :total_price
      t.float :tip
      t.string :comment
      t.belongs_to :restaurant
    end
  end
end
