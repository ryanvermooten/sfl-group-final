class CreatePreviousExperience < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
        t.integer :gardener_id
    	t.boolean :previous_experience
    	t.string :experience_qualitative
    	t.boolean :currently_growing
    	t.string :currently_growing_neg
    	t.string :usage
    	t.string :selling_amount
    	


    end
  end
end
