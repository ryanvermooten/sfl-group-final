class CreateGrantTable < ActiveRecord::Migration
  def change
    create_table :grants do |t|
    	t.integer :gardener_id
    	t.boolean :recieved
    	t.string :type
    	t.string :earning_power

    end
  end
end
