class CreateOrderItems < ActiveRecord::Migration[6.0]
  def change
    create_table :order_items do |t|
      t.belongs_to :order
      t.belongs_to :item
      t.integer :quantity

      t.timestamps
    end
  end
end
