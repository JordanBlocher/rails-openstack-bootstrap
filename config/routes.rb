Cloud::Application.routes.draw do


  get "home/index"


  get "dashboard/index"


  devise_for :cloud_users


  devise_for :cloud_users, :skip => [:sessions]  do
    get 'cloud_users/:id', :to => 'dashboard#index', :as => :cloud_user
    get 'login' => 'devise/sessions#new', :as => :new_cloud_user_session
    post 'login' => 'devise/sessions#create', :as => :cloud_user_session
    delete 'logout' => 'devise/sessions#destroy', :as => :destroy_cloud_user_session
  end

  
  resources :cloud_user, :controller => "cloud_user" do
    post :upgrade, :on => :collection
  end
   

  resources :instances do
    get 'history', :on => :collection
  end


  resources :security_group_instance_associations 


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


  resources :instance_types


  resources :instance_info_caches


  resources :floating_ips do
    get 'unassigned', :on => :collection
  end


  resources :fixed_ips do
    get 'unassigned', :on => :collection
  end


  resources :compute_nodes


  resources :certificates


  resources :image_properties

  
  root :to => 'home#index'


end
