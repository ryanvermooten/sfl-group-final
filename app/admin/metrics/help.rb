ActiveAdmin.register_page "Help"  do

    content do
          @metric = Sfl.group(:other_organizations_qualitative).count(:other_organizations_qualitative)
              render :partial => 'metrics/pie_chart', :locals => {:metric => @metric}
                end
end