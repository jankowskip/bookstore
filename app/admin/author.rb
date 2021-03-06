ActiveAdmin.register Author do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
#permit_params :list, :of, :attributes, :on, :model
#
# or
#
  permit_params do
    permitted = [:name, :bio, :year, :image]
  end
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs 'Details' do
      f.input :name
      f.input :bio
      f.input :year
      f.input :image, :as => :file, :hint => f.template.image_tag(f.object.image.url, :width => '100px')
    end
    f.actions
  end


end
