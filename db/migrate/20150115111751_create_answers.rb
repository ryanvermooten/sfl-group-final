class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
    	t.integer :gardener_question_id
    	t.string :answer
    end
      add_index :answers, [:gardener_question_id], unique: true,  :name => 'gardener_qs_id_ix'
  end
end
