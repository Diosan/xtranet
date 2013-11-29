ActiveAdmin.register Post do

  sidebar :Attachment, :only => :edit do 
    table_for post.attachments do |attachment|
      column "File" do |attachment|        
        link_to(attachment.title, attachment.file_url)
      end 
    end
  end


   form :html => { :enctype => "multipart/form-data" } do |f|
      f.inputs "Title and Category" do
        f.input :title
        f.input :category
      end
      
                                
      f.inputs "Image and Attachments" do        
            f.input :image, :as => :file, :hint => f.template.image_tag(post.image_url(:thumb).to_s)
            f.has_many :attachments, :allow_destroy => true, :heading => "" do |attachment|
              attachment.input :title
              attachment.input :file
            end
      end

            
      f.inputs "Description" do
        f.input :description, :input_html => { :class => "admin_tinymce", :rows => 5, :cols => 60 }
      end
      
      f.inputs "Content" do
        f.input :text, :input_html => { :class => "admin_tinymce", :rows => 20, :cols => 60 }
      end
      f.actions
    end
    
    show do
    
      panel "Category" do
         Category.find(post.category).title
      end    
    
      panel "Description" do
        simple_format post.description      
      end
      table_for post do |post|
        column :max_width => "500px" "" do |post|
          image_tag(post.image_url(:main).to_s)
        end
        column "Attachments" do |post|
          table_for post.attachments do |attachment|
            column "File" do |attachment|
              link_to(attachment.title, attachment.file_url)
            end
            column "Description" do |attachment|
              simple_format attachment.description
            end
          end
        end       
      end
      
      
      
      panel "Content" do
        simple_format post.text
      end
            
    end
    
    index do
      selectable_column
      column "Title" do |post|
        div do 
          h2 do
            link_to(post.title, admin_post_path(post))
          end
        end
      end
      column "Description" do |post|       
          simple_format post.description
      end
      column "Image" do |post|
        image_tag(post.image_url(:thumb).to_s)
      end
      column :created_at
      column :updated_at
      default_actions
    end

end
