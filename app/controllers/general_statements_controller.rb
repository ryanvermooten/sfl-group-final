class GeneralStatementsController < ApplicationController
 
def new                                                   
  #1st you retrieve the group thanks to params[:group_id] 
  #2nd you build a new comment                            
  @group = Group.find(params[:group_id])                  
  @gardener= Gardener.find(params[:gardener_id])
  @general_statement= GeneralStatement.new       
                                                          
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
    @general_statement = @gardener.build_general_statement
    @gardener.build_general_statement
  end
 
# POST /groups/:group_id/group_gardeners
# POST /groups/:group_id/group_gardeners.xml
  def create
    #1st you retrieve the group thanks to params[:group_id]
  @group = Group.find(params[:group_id])
    #2nd you create the trainer wih arguments in params [:gardener]
  @gardener= @group.gardeners.find(params[:gardener_id])
  @general_statement = @gardener.build_general_statement general_statement_params

      respond_to do |format|
      if @general_statement.save
         format.html { redirect_to @group, notice: 'Group was successfully created.' }
        #render "living_arrangements/new", id:@gardener 
      else
    render "edit"
  end
        #1st argument of redirect_to is an array, in order to build the correct route to the nested resource gardener
     # format.html {redirect_to([@gardener.group, @living_arrangements], :notice => 'Garden info was sucessfully saved' )}
      #format.xml {render :xml => @gardener, :status => :created, :location => [@gardener.group,@living_arrangements] }
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
 
  def gardener_params
   params.require(:gardener).permit(:first_name, :last_name, :contact_number, :address, :group_id, :garden_at_home, :document, :id_number, :avatar)
  end
 
  def group_params
  params.require(:group).permit(:name, :area, :group_id)
  end
  private
 
  def general_statement_params
    params.require(:general_statement).permit(:gardener_id, :gardener, :trainer)
  end
end