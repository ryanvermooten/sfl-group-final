class CreateFollowUpVisitSelling < ActiveRecord::Migration
  def change
    create_table :follow_up_visit_sellings do |t|
    	t.integer :gardener_id
    	t.boolean :selling
    	t.string :selling_what
    	t.string :selling_amount
    end
  end
end
