class CreateGardenerStatuses < ActiveRecord::Migration
  def change
    create_table :gardener_statuses do |t|
      t.integer :gardener_id
      t.integer :status_id

      t.timestamps
    end
  end
end
