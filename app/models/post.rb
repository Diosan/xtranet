class Post < ActiveRecord::Base
        has_many :attachments
        accepts_nested_attributes_for :attachments, allow_destroy: true
        mount_uploader :image, ImageUploader  
end
