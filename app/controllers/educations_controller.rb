class EducationsController < ApplicationController

def new                                                   
  #1st you retrieve the group thanks to params[:group_id] 
  #2nd you build a new comment                            
  @group = Group.find(params[:group_id])                  
  @gardener= Gardener.find(params[:gardener_id])
  @education= @gardener.build_education   
                                                          
  respond_to do |format|                                  
    format.html #new.html.erb                      
  end                                                     
end                                                       
 
# GET /groups/:group_id/gardeners/:id/edit
  def edit
    #1st you retrieve the group thanks to params[:group_id]
    @group = Group.find(params[:group_id])
    #2nd you retrieve the comment thanks to params[:id]
    @gardener= group.gardeners.find(params[:gardener_id])
    @education = @gardener.build_education
    @gardener.build_education
  end
 
# POST /groups/:group_id/group_gardeners
# POST /groups/:group_id/group_gardeners.xml
  def create
    #1st you retrieve the group thanks to params[:group_id]
  @group = Group.find(params[:group_id])
    #2nd you create the trainer wih arguments in params [:gardener]
  @gardener= @group.gardeners.find(params[:gardener_id])
  @education = @gardener.build_education education_params

      if @education.save
        redirect_to new_group_gardener_employment_path(@group, @gardener)
        #render "educations/new", id:@gardener 
      else
    render "edit"
  end
        #1st argument of redirect_to is an array, in order to build the correct route to the nested resource gardener
     # format.html {redirect_to([@gardener.group, @educations], :notice => 'Garden info was sucessfully saved' )}
      #format.xml {render :xml => @gardener, :status => :created, :location => [@gardener.group,@educations] }
    end
  end
 
 
  def update
    #1st you retrieve the group thanks to params[:group_id]
    group = Group.find(params[:group_id])
    @gardener = group.gardeners.find(params[:id])
 
    respond_to do |format|
      if @gardener.update_attributes(gardener_params)
        #1st argument of redirect_to is an array, in order to build the correct route to the nested resource gardener
     format.html {redirect_to([@gardener.group, @gardener], :notice => 'Garden was successfully updated')}
     format.xml { head :ok}
      else
        format.html {render :action => "edit"}
        format.xml {render :xml => @gardener.errors, :status => :unprocessable_entity}
      end
    end
  end
  
  private
  
  def education_params
    params.require(:education).permit(:gardener_id, :level)
  end
 
  def gardener_params
   params.require(:gardener).permit(:first_name, :last_name, :contact_number, :address, :group_id, :garden_at_home, :document, :id_number, :avatar)
  end