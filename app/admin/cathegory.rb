ActiveAdmin.register Cathegory do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
  permit_params do
    permitted = [:name]
  end
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

  show do |cathegory|
    attributes_table do
      row :name

    # end
    # panel "Books" do
      table_for cathegory.books do
        column :title
        column :description
        column :year
        column :publisher
      end
    end

  end

end
