class AddDateToFollowUpVisit < ActiveRecord::Migration
  def change
  	add_column :follow_up_visit_gardens, :date_created, :date
  end
end
