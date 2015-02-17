class AddColumnUnderstandableToGroupEvaluation < ActiveRecord::Migration
  def change
  	add_column :group_evaluations, :training_understandable, :string
  end
end
