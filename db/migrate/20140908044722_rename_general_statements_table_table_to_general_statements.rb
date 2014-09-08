class RenameGeneralStatementsTableTableToGeneralStatements < ActiveRecord::Migration
  def change
  	rename_table :general_statements_tables, :general_statements
  end
end
