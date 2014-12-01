ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end
    section "Recently added groups" do
    table_for Group.order("created_at desc").limit(5) do
        column :group_name do |group|
            link_to group.group_name, admin_group_path(group)
        end
    end
end
section "Recently added gardeners" do
    table_for Gardener.order("created_at desc").limit(5) do
        column :first_name do |gardener|
            link_to gardener.first_name, admin_gardener_path(gardener)
        end
        column :last_name
        column :created_at


    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end
end
  strong {link_to "view all gardeners", admin_gardeners_path} # content
end
end
