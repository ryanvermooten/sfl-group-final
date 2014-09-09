class SupportVisitsController < ApplicationController
 
def new                                                   
  #1st you retrieve the group thanks to params[:group_id] 
  #2nd you build a new comment                            
  @group = Group.find(params[:group_id])                  
  @gardener= Gardener.find(params[:gardener_id])          
                                                          
  respond_to do |format|                                  
    format.html #new.html.erb                             
    format.xml {render :xml => @support_visit}                   
  end                                                     
end                                                       
 
# GET /groups/:group_id/gardeners/:id/edit
  def edit
    #1st you retrieve the group thanks to params[:group_id]
    group = Group.find(params[:group_id])
    #2nd you retrieve the comment thanks to params[:id]
    @gardener= group.gardeners.find(params[:gardener_id])
    @gardener.build_support_visit(support_visit_params)
  end
 
# POST /groups/:group_id/group_gardeners
# POST /groups/:group_id/group_gardeners.xml
 def create
    #1st you retrieve the group thanks to params[:group_id]
  group = Group.find(params[:group_id])
    #2nd you create the trainer wih arguments in params [:gardener]
  @gardener= group.gardeners.find(params[:gardener_id])
   @gardener.support_visits.build(support_visit_params)
        respond_to do |format|
      if @gardener.save
        #1st argument of redirect_to is an array, in order to build the correct route to the nested resource gardener
      format.html {redirect_to([@gardener.group, @group], :notice => 'Support visit completed successfully' )}
      format.xml {render :xml => @gardener, :status => :created, :location => [@gardener.group,@gardener] }
      else
        format.html {render :action => "new"}
        format.xml {render :xml => @gardener.errors, status: :unprocessable_entity}
      end
    end
  end
 
  private
 
  def support_visit_params
    params.require(:support_visit).permit(:gardener_id, :avatar, :notes)
  end
 
  def gardener_params
   params.require(:gardener).permit(:first_name, :last_name, :contact_number, :address, :group_id, :garden_at_home, :document, :id_number, :avatar)
  end
end
