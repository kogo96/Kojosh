class PostDayar < ActiveRecord::Migration
  def change
  	change_table :posts do |t|
  		t.boolean :post_dayar
  	end
  end
end
