class CreateEmployementTable < ActiveRecord::Migration
  def change
    create_table :employements do |t|
    	t.integer :gardener_id
    	t.boolean :employed
    	t.string :type
    	t.string :earning_power
    end
  end
end
