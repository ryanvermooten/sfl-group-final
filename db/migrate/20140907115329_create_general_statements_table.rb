class CreateGeneralStatementsTable < ActiveRecord::Migration
  def change
    create_table :general_statements_tables do |t|
    	t.integer :gardener_id
    	t.string :gardener
    	t.string :trainer
    end
  end
end
