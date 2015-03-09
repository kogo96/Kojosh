class Pens < ActiveRecord::Migration
  def change
  	create_table :pens do |t|
  		t.string :color
  		t.integer :amount
  		t.timestamps 
  	end
  end
end
