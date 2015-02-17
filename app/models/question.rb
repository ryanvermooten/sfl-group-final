class Question < ActiveRecord::Base
	#has_and_belongs_to_many :answers
	has_many :answers
	belongs_to :input_type
	#has_and_belongs_to_many, join_table: 'questionnaires_questions'
	has_many :gardeners, through: :answers
	belongs_to :question_section
end