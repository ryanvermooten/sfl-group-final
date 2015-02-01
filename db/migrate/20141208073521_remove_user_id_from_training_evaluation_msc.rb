class RemoveUserIdFromTrainingEvaluationMsc < ActiveRecord::Migration
  def change
  	remove_column :training_evaluation_mscs, :user_id
  	remove_column :training_evaluation_mscs, :group_id
  end
end
