class CreateFollowUpVisitImpression < ActiveRecord::Migration
  def change
    create_table :follow_up_visit_impressions do |t|
    	t.integer :gardener_id
    	t.string :future_plan
    	t.text :issue
    	t.text :positive
    	t.text :negative
    	t.text :general_comment
    end
  end
end
