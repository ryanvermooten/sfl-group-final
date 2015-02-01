class CreateGardenerQuestionnaires < ActiveRecord::Migration
  def change
    create_table :gardener_questionnaires do |t|
    	t.integer :gardener_id
    	t.integer :questionnaire_id

      t.timestamps
    end

    add_index :gardener_questionnaires, [:gardener_id, :questionnaire_id], unique: true, name: 'gardener_questions'
  end
end
