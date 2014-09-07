class AddGardensToGardeners < ActiveRecord::Migration
  def change
  	create_table :gardens do |t|
  		t.integer :gardener_id
  		t.boolean :garden_at_home
  		t.string :garden_location
  		t.integer :garden_l
  		t.integer :garden_w
  		
  end
end
end
