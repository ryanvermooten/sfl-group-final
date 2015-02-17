class GroupEvaluation <ActiveRecord::Base
	belongs_to :group
	belongs_to :training_eval
	belongs_to :trainer_eval
	belongs_to :msc_eval
	belongs_to :final_notes
end