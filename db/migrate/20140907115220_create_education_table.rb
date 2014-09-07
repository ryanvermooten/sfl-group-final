class CreateEducationTable < ActiveRecord::Migration
  def change
    create_table :educations do |t|
    	t.integer :gardener_id
    	t.string :level
    end
  end
end
