class ApplicationController < ActionController::Base
  protect_from_forgery
    rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end

  def catch_not_found
    yield
  rescue ActiveRecord::RecordNotFound
    redirect_to :back, :notice => "Record not found."
  end

  private

  # Tell Devise to redirect after sign_in
  def after_sign_in_path_for(resource_or_scope)
    dashboard_index_path
  end

  # Tell Devise to redirect after sign_out
  def after_sign_out_path_for(resource_or_scope)
    home_index_path
  end 

  def signed_in_root_path_for(resource_or_scope)
    dashboard_index_path
  end
end
