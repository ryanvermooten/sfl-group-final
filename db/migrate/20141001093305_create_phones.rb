class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.integer :phone_id
      t.string :name
      t.integer :number
      t.string :condition
      t.string :comment

      t.timestamps
    end
  end
end
