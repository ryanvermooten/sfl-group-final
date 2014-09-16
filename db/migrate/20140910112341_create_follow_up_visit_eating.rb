class CreateFollowUpVisitEating < ActiveRecord::Migration
  def change
    create_table :follow_up_visit_eatings do |t|
    	t.integer :gardener_id
    	t.integer :eating_garden
    	t.string :veg_type_eaten
    end
  end
end
