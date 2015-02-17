class RenameTableTableGroupEvaluationGroupEvalation < ActiveRecord::Migration
  def change
  		rename_table :table_group_evaluations, :group_evaluations
  end
end
