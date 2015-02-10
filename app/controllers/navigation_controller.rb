class NavigationController < ApplicationController
	  before_filter :authenticate_user!
	def new
	@gardener = Gardener.new
	end
	def create
	#@group = Group.find(params[:group_id])
    #2nd you create the trainer wih arguments in params [:gardener]
    @gardener = Gardener.new(gardener_params)
	respond_to do |format|
      if @gardener.save
        #1st argument of redirect_to is an array, in order to build the correct route to the nested resource gardener
      format.html {redirect_to([@gardener.group], :notice => 'Home Gardener was successfully created' )}
      format.xml {render :xml => @gardener, :status => :created, :location => [@gardener.group,@gardener] }
      else
        format.html {render :action => "new"}
        format.xml {render :xml => @gardener.errors, status: :unprocessable_entity}
      	end
    	end
	end
	 private
    # Use callbacks to share common setup or constraints between actions.

    # Never trust parameters from the scary internet, only allow the white list through.
    def gardener_params
    	params.require(:gardener).permit(:first_name, :race, :last_name, :contact_number, :address, :group_id, :garden_at_home, :document, :id_number, :avatar)
    end
end
