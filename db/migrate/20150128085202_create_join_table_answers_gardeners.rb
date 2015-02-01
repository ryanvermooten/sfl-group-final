class CreateJoinTableAnswersGardeners < ActiveRecord::Migration
  def change
    create_join_table :answers, :gardeners do |t|
       t.index [:gardener_id, :answer_id]
      # t.index [:_id, :_id]
    end
  end
end
