class Category < ActiveRecord::Base
     has_many :posts
     mount_uploader :image, ImageUploader   
end
