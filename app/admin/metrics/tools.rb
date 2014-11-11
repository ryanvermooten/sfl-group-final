ActiveAdmin.register_page "tools"  do

    content do
          @metric = Ability.group(:tools).count(:tools)
              render :partial => 'metrics/pie_chart', :locals => {:metric => @metric}
                end
end