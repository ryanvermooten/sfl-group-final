class AddGardenerIdToSupportVisits < ActiveRecord::Migration
  def change
  	add_column :support_visits, :gardener_id, :integer
  end
end
