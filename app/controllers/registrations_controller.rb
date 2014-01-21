class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end
  
  def create
     super  
  end
  
  def update
    super
    #resource.first_name = params[:first_name]
    #resource.last_name = params[:last_name]
    #resource.save
  end
end
