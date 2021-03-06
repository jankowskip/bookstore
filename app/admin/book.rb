ActiveAdmin.register Book do

  controller do
    def permitted_params
      params.permit!
    end
  end

  index do
    selectable_column
    id_column
    column :title
    column :year
    column :publisher
    column :created_at
    column :updated_at
    actions
  end

  show do |book|
    attributes_table do
      row :title
      row :description
      row :year
      row :publisher
      row :cathegories
      row :authors
      row "Image" do
        image_tag(book.image.url(:thumb))
      end
    end
    panel "Authors" do
       book.authors.each do |author|
        a author.name, href: admin_author_path(author)
      end
    end
    panel "Cathegory" do
      book.cathegories.each do |cathegory|
        a cathegory.name, href: admin_cathegory_path(cathegory)
      end

    end
  end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs 'Details' do
      f.input :title
      f.input :description
      f.input :year
      f.input :publisher, :as => :select, :collection => Publisher.all
      f.input :image, :as => :file, :hint => f.template.image_tag(f.object.image.url, :width => '100px')
    end
    f.inputs 'Cathegories' do
      f.input :cathegories, :as => :check_boxes, collection: Cathegory.all
    end
    f.inputs 'Authors' do
      f.input :authors, :as => :check_boxes, collection: Author.all
    end
    f.actions
  end

end
