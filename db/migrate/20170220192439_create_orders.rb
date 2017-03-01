class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.time :time
      t.belongs_to :restaurant

      t.timestamps
    end
  end
end
