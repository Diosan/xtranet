class Gallery < ActiveRecord::Base
     belongs_to :country, :class_name => 'Spree::Country'
     belongs_to :user
     has_many :gallery_images
end
