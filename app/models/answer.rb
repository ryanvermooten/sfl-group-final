class Answer < ActiveRecord::Base
	belongs_to :question
	#has_and_belongs_to_many :questions
	has_one :input_type, :through => :question
	belongs_to :gardener
end
