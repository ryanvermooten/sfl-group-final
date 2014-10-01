class CreatePhoneRentals < ActiveRecord::Migration
  def change
    create_table :phone_rentals do |t|
      t.integer :phone_id
      t.integer :user_id
      t.integer :data
      t.boolean :charger

      t.timestamps
    end
  end
end
