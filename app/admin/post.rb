ActiveAdmin.register Post do

   form :html => { :enctype => "multipart/form-data" } do |f|
      f.inputs "Title" do
        f.input :title
      end
      f.inputs "Image" do
        f.file_field :image
      end
      
      f.inputs "Content" do
        f.input :description
        f.input :text, :input_html => { :class => "admin_tinymce", :rows => 20, :cols => 60 }
      end
      f.actions
    end
    
    show do
      div do
        post.description
      end
      div do
        image_tag(post.image_url(:main).to_s)
      end
      div do
        simple_format post.text
      end      
    end
    
    index do
      column "Title" do |post|
        div do 
          h2 do
            link_to(post.title, admin_post_path(post))
          end
        end
      end
      column "Description" do |post|
        p do
          simple_format post.description
        end
      end
      column "Image" do |post|
        image_tag(post.image_url(:thumb).to_s)
      end
      column :created_at
      column :updated_at
    end

end
