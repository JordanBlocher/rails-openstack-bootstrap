Cloud::Application.routes.draw do


  devise_for :users, :path_prefix => 'd'


  resources :user, :controller => "user" do
    post :upgrade, :on => :collection
  end
    

  get "home/index"


  get "dashboard/index"


  match '/users/:id', :to => 'dashboard#index', :as => :user


  resources :virtual_interfaces


  resources :snapshots


  resources :services


  resources :security_groups


  resources :security_group_rules


  resources :s3_images


  resources :projects


  resources :networks


  resources :key_pairs


  resources :instances do
    get 'history', :on => :collection
  end


  resources :instance_types


  resources :instance_type_extra_specs


  resources :instance_info_caches


  resources :floating_ips


  resources :fixed_ips


  resources :compute_nodes


  resources :certificates


  resources :image_properties

  
  root :to => 'home#index'


end
