class CreateGardenerQuestions < ActiveRecord::Migration
  def change
    create_table :gardener_questions do |t|
    	t.integer :question_id
    	t.integer :gardener_id
    end
      add_index :gardener_questions, [:question_id, :gardener_id], unique: true,  :name => 'g_and_q_id_ix'
  end
end
