class AddDateTimeToSupportVisits < ActiveRecord::Migration
  def change
  	add_column(:support_visits, :created_at, :datetime)
  	add_column(:support_visits, :updated_at, :datetime)
  end
end
