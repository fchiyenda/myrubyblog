ActiveAdmin.register Post do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
menu :label => "Blog Posts" 
 permit_params :title, :body, :category_id, :admin_user_id
index do
	column :title
	column "Author", :admin_user
	column :category
	column :created_at
	actions
end
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
