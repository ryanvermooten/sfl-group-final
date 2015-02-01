class RenameColumnInformationWasHelpfulToHelpful < ActiveRecord::Migration
  def change
  	rename_column :training_evaluation_trainings, :information_was_helpful, :helpful
  end
end
