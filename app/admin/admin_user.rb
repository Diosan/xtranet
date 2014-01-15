ActiveAdmin.register AdminUser do
  menu :parent => "Users"

  index do
    column :email
    column :current_sign_in_at
    column :last_sign_in_at
    column :sign_in_count
    default_actions
  end

  filter :email

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.inputs "Roles" do
              f.input :roles, :as => :check_boxes
    end
    f.actions
  end

  controller do

    def permitted_params
      params.permit admin_user: [:email, :password, :password_confirmation, role_ids: []]
    end

  end
end
