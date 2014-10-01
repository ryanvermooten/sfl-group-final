class AddPhonesRental < ActiveRecord::Migration
  def change
  	create_table :phones_rental do |t|
  		t.integer :phone_id
  		t.integer :user_id
  		t.integer :data
  		t.boolean :charger 
  end
end
end