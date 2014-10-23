class RenameTypeToEmploymentType < ActiveRecord::Migration
  def change
  	drop_table :employements
  end
end
