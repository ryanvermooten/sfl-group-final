class RemoveUserIdFromTrainingEvaluation < ActiveRecord::Migration
  def change
  	remove_column :training_evaluations, :user_id
  	remove_column :training_evaluations, :group_id
  end
end
