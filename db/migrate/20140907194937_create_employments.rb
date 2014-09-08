class CreateEmployments < ActiveRecord::Migration
  def change
    create_table :employments do |t|
    	t.integer :gardener_id
    	t.boolean :employed
    	t.string :type
    	t.string :earning_power
    end
  end
end
