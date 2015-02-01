class DropTableGardenerQuestions < ActiveRecord::Migration
  def change
  	drop_table :gardener_questions
  end
end
