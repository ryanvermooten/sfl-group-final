ActiveAdmin.register_page "Education_percentage"  do

    content do
          @metric = Education.group(:level).count(:level)
              render :partial => 'metrics/pie_chart', :locals => {:metric => @metric}
                end
end