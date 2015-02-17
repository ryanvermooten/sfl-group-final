class AddDatecreatedToSupportVisits < ActiveRecord::Migration
  def change
  	add_column :support_visits, :date_created, :date
  end
end
