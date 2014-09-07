class CreateAbilityTable < ActiveRecord::Migration
  def change
    create_table :abilities do |t|
    	t.integer :gardener_id
    	t.string :water_access
    	t.boolean :tools
    	t.string :tools_list
    end
  end
end
