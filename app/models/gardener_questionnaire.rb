class GardenerQuestionnaire < ActiveRecord::Base
	belongs_to :gardener
	belongs_to :questionnaire
end
