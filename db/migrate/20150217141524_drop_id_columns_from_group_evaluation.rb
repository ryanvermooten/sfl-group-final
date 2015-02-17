class DropIdColumnsFromGroupEvaluation < ActiveRecord::Migration
  def change
  	remove_column :group_evaluations, :training_eval_id
  	remove_column :group_evaluations, :trainer_eval_id
  	remove_column :group_evaluations, :msc_eval_id
  	remove_column :group_evaluations, :final_notes_id
  end
end
