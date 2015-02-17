class AddColumnsToGroupEvaluations < ActiveRecord::Migration
  def change
  	add_column :group_evaluations, :training_good, :string
  	add_column :group_evaluations, :training_information_helpful, :string
  	add_column :group_evaluations, :training_support_helpful, :string
  	add_column :group_evaluations, :training_qualitative_positive, :text
  	add_column :group_evaluations, :training_qualitative_negative, :text
  	add_column :group_evaluations, :trainer_good, :string
  	add_column :group_evaluations, :trainer_understandable, :string
  	add_column :group_evaluations, :trainer_helpful, :string
  	add_column :group_evaluations, :trainer_approachable, :string
  	add_column :group_evaluations, :trainer_qualitative_positive, :text
  	add_column :group_evaluations, :trainer_qualitative_negative, :text
  	add_column :group_evaluations, :msc_qualitative, :text
  	add_column :group_evaluations, :final_notes, :text
  end
end
