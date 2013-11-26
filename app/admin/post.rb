ActiveAdmin.register Post do

   form :html => { :enctype => "multipart/form-data" } do |f|
      f.inputs "Title" do
        f.input :title
      end
      f.inputs "Image" do
        f.file_field :image
      end
      
      f.inputs "Content" do
        f.input :text, :input_html => { :class => "admin_tinymce", :rows => 20, :cols => 60 }
      end
      f.actions
    end
    
    show do
      div do
        image_tag(post.image_url(:main).to_s)
      end
      div do
        simple_format post.text
      end
      
    end
    
   index :as => :grid do |post|
    link_to(image_tag(post.image_url(:thumb).to_s), admin_post_path(post))
  end

end
