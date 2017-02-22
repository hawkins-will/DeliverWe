class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.float :tip
      t.string :note, limit: 50
      t.belongs_to :restaurant
    end
  end
end
