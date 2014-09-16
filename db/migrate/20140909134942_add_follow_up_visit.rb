class AddFollowUpVisit < ActiveRecord::Migration
  def change
  	create_table :follow_up_vist_gardens do |t|
  		t.integer :gardener_id
  		t.boolean :still_gardening
  		t.integer :rating
  		t.boolean :mini_nursery
  		t.boolean :compost_heap
  		t.boolean :trench_bed
  		t.integer :trench_bed_sum
  		t.boolean :container_garden
  		t.integer :container_garden_sum
  		t.boolean :other
  		t.string :other_qualitative
  end
end
end
