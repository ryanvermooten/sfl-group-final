class Questionnaire < ActiveRecord::Base
	has_and_belongs_to_many :gardeners, join_table: 'gardener_questionnaires'
	has_and_belongs_to_many :questions, join_table: 'Questionnaires_Questions'
end
