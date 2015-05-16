ActiveAdmin.register BookInstance do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :book_id, :user_id
  show do |book_instance|
    attributes_table do
      row :id
      row :book
      row :user
      row :created_at
      row :updated_at
      row ('STATUS') { |b| status_tag book_instance.available? ? 'Available' : 'Unavailable' }
    end
  
  end


#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
