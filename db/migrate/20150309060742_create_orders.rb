class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.integer :amount
      t.datetime :pickup_time
      t.decimal :price
      t.boolean :is_approved
      t.boolean :is_picked_up

      t.timestamps
    end
  end
end
