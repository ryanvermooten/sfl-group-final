class AddLivingArrangements < ActiveRecord::Migration
  def change 
  	create_table :living_arrangements do |t|
  		t.integer :gardener_id
  		t.string :marital_status
  		t.string :number_of_people_in_household
  end
end
end