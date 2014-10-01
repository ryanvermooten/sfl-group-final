class AddCellPhoneRegistration < ActiveRecord::Migration
  def change
    create_table :phones do |t|
    	t.integer :phone_id
    	t.integer :user_id
    	t.string :condition
    	t.string :comments
  end
end
end
