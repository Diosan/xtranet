class TeamMember < ActiveRecord::Base
        mount_uploader :image, ImageUploader
end
