Cloud::Application.routes.draw do


  devise_for :users, :path_prefix => 'd'


  devise_scope :user do
    get '/login' => 'devise/sessions#new'
    get '/logout' => 'devise/sessions#destroy'
  end


  resources :user, :controller => "user" do
    post :upgrade, :on => :collection
  end
    

  get "home/index"


  get "dashboard/index"


  match '/users/:id', :to => 'dashboard#index', :as => :user
  match '/users/:id/show', :to => 'user#show', :as => :user


  resources :auth_tokens


  resources :dns_domains


  resources :migrate_versions


  resources :volumes


  resources :volume_types


  resources :volume_type_extra_specs


  resources :volume_metadata


  resources :virtual_storage_arrays


  resources :virtual_interfaces


  resources :user_role_associations


  resources :user_project_role_associations


  resources :user_project_associations


  resources :snapshots


  resources :sm_volumes


  resources :sm_flavors


  resources :sm_backend_configs


  resources :services


  resources :security_groups


  resources :security_group_rules


  resources :security_group_instance_associations


  resources :s3_images


  resources :quota


  resources :provider_fw_rules


  resources :projects


  resources :networks


  resources :migrations


  resources :key_pairs


  resources :iscsi_targets


  resources :instances


  resources :instance_types


  resources :instance_type_extra_specs


  resources :instance_metadata


  resources :instance_info_caches


  resources :instance_faults


  resources :instance_actions


  resources :floating_ips


  resources :fixed_ips


  resources :consoles


  resources :console_pools


  resources :compute_nodes


  resources :certificates


  resources :cells


  resources :bw_usage_caches


  resources :block_device_mappings


  resources :aggregates


  resources :aggregate_metadata


  resources :aggregate_hosts


  resources :agent_builds


  resources :image_properties


  resources :image_members

  
  root :to => 'home#index'


end
