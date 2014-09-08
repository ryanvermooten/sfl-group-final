class CreateSupportVisits < ActiveRecord::Migration
  def change
    create_table :support_visits do |t|
    t.attachment :avatar
    end
  end
end
