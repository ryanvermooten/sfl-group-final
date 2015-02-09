class Answer < ActiveRecord::Base
	belongs_to :question
	belongs_to :questionnaire
	#has_and_belongs_to_many :questions
	has_one :input_type, :through => :question
	belongs_to :gardener
	accepts_nested_attributes_for :gardener
	#accepts_nested_attributes_for :group
end
