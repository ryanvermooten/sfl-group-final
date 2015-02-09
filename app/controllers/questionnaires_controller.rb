class QuestionnairesController < ApplicationController
	def index                                                   
  #1st you retrieve the group thanks to params[:group_id] 
  #2nd you build a new comment
  #@question = question.new
  @q= Questionnaire.all
  @questionnaire = Questionnaire.all
end
end
