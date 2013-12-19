class ProductRangesUser < ActiveRecord::Base
  belongs_to :user, :class_name => 'User'
  belongs_to :taxonomy, :class_name => 'Spree::Taxonomy'
end
