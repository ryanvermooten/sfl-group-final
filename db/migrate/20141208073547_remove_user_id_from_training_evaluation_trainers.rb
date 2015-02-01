class RemoveUserIdFromTrainingEvaluationTrainers < ActiveRecord::Migration
  def change
  	remove_column :training_evaluation_trainers, :user_id
  	remove_column :training_evaluation_trainers, :group_id
  end
end
