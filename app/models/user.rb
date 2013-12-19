class User < ActiveRecord::Base
  has_and_belongs_to_many :product_ranges, join_table: 'product_ranges_users', :class_name => 'Spree::Taxonomy'
  belongs_to :address, :class_name => 'Spree::Address'
  has_and_belongs_to_many :spree_roles, join_table: 'spree_roles_users', :class_name => 'Spree::Role' 
  has_many :spree_orders, :class_name => 'Spree::Order'
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  accepts_nested_attributes_for :address, allow_destroy: true
  
  def has_spree_role? (role)
      spree_roles.where(name: role).length > 0
  end
  
  def last_incomplete_spree_order
      spree_orders.where.not(state: 'complete').order("updated_at").last
  end
  
end
