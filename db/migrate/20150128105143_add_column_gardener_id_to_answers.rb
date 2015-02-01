class AddColumnGardenerIdToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :gardener_id, :integer, index: true
  end
end
