class AdminUser < ActiveRecord::Base
  has_and_belongs_to_many :roles, join_table: 'admin_users_roles', :class_name => 'Role'
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

  protected 
    def password_required? 
      false 
    end
end
