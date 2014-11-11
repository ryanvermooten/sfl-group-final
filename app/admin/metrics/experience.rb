ActiveAdmin.register_page "experience"  do

    content do
          @metric = Experience.group(:previous_experience).count(:previous_experience)
              render :partial => 'metrics/pie_chart', :locals => {:metric => @metric}
                end
	content do
          @metric = Experience.group(:previous_experience).count(:previous_experience)
              render :partial => 'metrics/pie_chart', :locals => {:metric => @metric}
                end
end