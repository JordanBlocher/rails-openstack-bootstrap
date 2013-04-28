Cloud::Application.routes.draw do


  resources :instances


  resources :security_group_instance_associations


  devise_for :cloud_users, :path_prefix => 'd'


  resources :cloud_user, :controller => "cloud_user" do
    post :upgrade, :on => :collection
  end
    

  get "home/index"


  get "dashboard/index"


  match '/cloud_users/:id', :to => 'dashboard#index', :as => :cloud_user


  resources :projects


  resources :users


  resource :user_project_associations


  resources :virtual_interfaces


  resources :snapshots


  resources :services


  resources :security_groups


  resources :security_group_rules


  resources :s3_images


  resources :networks


  resources :key_pairs


  resources :instances do
    get 'history', :on => :collection
  end


  resources :instance_types


  resources :instance_info_caches


  resources :floating_ips


  resources :fixed_ips


  resources :compute_nodes


  resources :certificates


  resources :image_properties

  
  root :to => 'home#index'


end
