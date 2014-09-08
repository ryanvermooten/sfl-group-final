class AddColumnNotesToSupportVisits < ActiveRecord::Migration
  def change
  	add_column :support_visits, :notes, :text
  end
end
