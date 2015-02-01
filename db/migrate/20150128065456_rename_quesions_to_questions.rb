class RenameQuesionsToQuestions < ActiveRecord::Migration
  def change
  	rename_table :quesions, :questions
  end
end
