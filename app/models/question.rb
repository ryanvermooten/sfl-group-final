class Question < ActiveRecord::Base
	#has_and_belongs_to_many :answers
	has_many :answers
	belongs_to :input_type
	has_and_belongs_to_many :questionnaires, join_table: 'questionnaires_questions'
	has_many :gardeners, through: :answers
end