class AnswersController < ApplicationController
  before_filter :authenticate_user!
 
  def new                                                   
  #1st you retrieve the group thanks to params[:group_id] 
  #2nd you build a new comment
  #@question = question.new
    @gardener_questionnaire = GardenerQuestionnaire.find(params[:gardener_questionnaire_id])
    @questionnaire = @gardener_questionnaire.questionnaire
    @answer= Answer.new
   # @gardener_questionnaire= @gardener.build_gardener_questionnaire
  end

  def create
    @gardener_questionnaire = GardenerQuestionnaire.(gardener_questionnaire_params)
    @gardener_questionnaire.new(gardener_questionnaire_params)
      if @gardener_questionnaire.save
        redirect_to new_
      end
  end

  private

    def gardener_questionnaire_params
     params.require(:gardener_questionnaire).permit(:gardener_id, :questionnaire_id, gardener_attributes: [:id], questionnaire_attribues: [:id])
    end
  end