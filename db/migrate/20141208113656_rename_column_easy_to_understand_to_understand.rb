class RenameColumnEasyToUnderstandToUnderstand < ActiveRecord::Migration
  def change
  	rename_column :training_evaluation_trainings, :easy_to_understand, :understandable
  end
end
