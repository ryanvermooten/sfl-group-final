class AddDateToTrainingEval < ActiveRecord::Migration
  def change
  	add_column :group_evaluations, :date_answered, :date
  end
end
