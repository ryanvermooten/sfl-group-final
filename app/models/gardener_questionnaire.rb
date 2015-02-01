class GardenerQuestionnaire < ActiveRecord::Base
	has_many :gardeners
	has_many :questionnaires
end
