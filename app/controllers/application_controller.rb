class ApplicationController < ActionController::Base

  before_filter :authenticate_user!

  before_filter :configure_permitted_parameters, if: :devise_controller?

  before_filter do
    resource = controller_name.singularize.to_sym
    method = "#{resource}_params"
    params[resource] &&= send(method) if respond_to?(method, true)
  end

  
  
  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Access denied!"
    redirect_to root_url
  end

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception  
  
  def after_sign_in_path_for(resource)
    sign_in_url = url_for(:action => 'new', :controller => 'sessions', :only_path => false, :protocol => 'http')
    if request.referer == sign_in_url
      super
    else
      stored_location_for(resource) || request.referer || root_path
    end
  end
  
  def after_sign_out_path_for(resource)
        new_user_session_path
  end
  
  def access_denied(exception)
        redirect_to root_url, :alert => exception.message
  end
  
  protected
  
  def configure_permitted_parameters
        
        devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :last_name, :email, :password) }
        devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password, address_attributes: [:first_name, :last_name, :country_id, :state_id, :city, :address1, :address2, :zipcode, :phone, :alternative_phone, :company ], :product_range_ids => [], :spree_role_ids => []) }
  end
  
  def complete_profile
    if current_user.completed_profile?
      redirect_to the_path_after_log_in
    else
      redirect_to edit_profile_path, error: "Please update your profile."
    end
  end
  
end
