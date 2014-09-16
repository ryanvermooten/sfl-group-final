class AddAndRenameToFollowUpVisitEating < ActiveRecord::Migration
  def change
  	rename_column :follow_up_visit_eatings, :eating_garden, :eating_sum
  end
end
