class GardenerQuestionnairesController < ApplicationController
  before_filter :authenticate_user!
 
  def new                                                   
  #1st you retrieve the group thanks to params[:group_id] 
  #2nd you build a new comment
  #@question = question.new
    @gardener_questionnaire = GardenerQuestionnaire.new
    @gardener= current_user.gardeners
    @group = current_user.groups
    @questionnaire = Questionnaire.all
   # @gardener_questionnaire= @gardener.build_gardener_questionnaire
  end

  def create
    @gardener_questionnaire = GardenerQuestionnaire.new(gardener_questionnaire_params)
   # @gardener_questionnaire.new(gardener_questionnaire_params)
      if @gardener_questionnaire.save
        redirect_to new_gardener_questionnaire_answer_path (@gardener_questionnaire)
      end
  end

  private

    def gardener_questionnaire_params
     params.require(:gardener_questionnaire).permit(:gardener_id, :questionnaire_id, gardener_attributes: [:id], questionnaire_attribues: [:id])
    end
  end