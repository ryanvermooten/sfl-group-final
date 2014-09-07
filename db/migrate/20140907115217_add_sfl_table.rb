class AddSflTable < ActiveRecord::Migration
  def change
  	create_table :sfls do |t|
  		t.integer :gardener_id
  		t.string :referral
  		t.boolean :other_organizations
  		t.string :other_organizations_qualitative
  end
end
end
