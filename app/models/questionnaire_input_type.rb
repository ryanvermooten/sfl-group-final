class QuestionnaireInputType < ActiveRecord::Base
	belongs_to :Questionnaire
	belongs_to :input_type
end
