class CreateExtras < ActiveRecord::Migration
  def change
    create_table :extras do |t|

      t.timestamps
    end
  end
end
