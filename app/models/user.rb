class User < ActiveRecord::Base
  belongs_to :address, :class_name => 'Spree::Address'
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  accepts_nested_attributes_for :address, allow_destroy: true
end
