class ApplicationController < ActionController::Base
  protect_from_forgery
    rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end
  
  private

  # Tell Devise to redirect after sign_in
  def after_sign_in_path_for(resource_or_scope)
    'https://cs-os-hv8.rd.unr.edu:3000/dashboard/index/'
  end

  # Tell Devise to redirect after sign_out
  def after_sign_out_path_for(resource_or_scope)
    'https://cs-os-hv8.rd.unr.edu:3000/home/index/'
  end 

  def signed_in_root_path_for(resource_or_scope)
    'https://cs-os-hv8.rd.unr.edu:3000/dashboard/index/'
  end
end
