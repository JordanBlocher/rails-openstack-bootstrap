module ApplicationHelper
  
  def resource_name
    :cloud_user
  end

  def resource
    @resource || CloudUser.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:cloud_user]
  end

 
end
