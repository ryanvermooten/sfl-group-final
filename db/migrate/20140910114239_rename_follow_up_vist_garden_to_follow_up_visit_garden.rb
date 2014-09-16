class RenameFollowUpVistGardenToFollowUpVisitGarden < ActiveRecord::Migration
  def change
  	rename_table :follow_up_vist_gardens, :follow_up_visit_gardens
  end
end
