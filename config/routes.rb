Regionsps::Application.routes.draw do

  resources :events, :only => [:index]
  resources :sessions, :only => [:new, :create, :destroy]
  
  match '/recursos'       => 'resources#index'
  match '/recursos/:tag'  => 'resources#bytag', :as => :recursos_f
  match '/nosotros'       => 'static_pages#about_us'
  match '/admin'          => 'sessions#admin'
  match '/signin'         => 'sessions#create', :via => :post
  match '/signin'         => 'sessions#admin', :via => :get
  match '/signout'        => 'sessions#destroy'
  match '/historias'      => 'stories#index', :via => :get

  namespace :admin do
    resources :resources, :path => 'recursos' do
      resources :tags, :controller => "tags"
    end
    resources :users do
      resources :roles, :except => [:index, :show]
      resources :groups, :only => [:new, :create, :destroy]
    end    
    resources :events
    match 'events/:id/' => 'events#invite', :as => :invite, :via => :post
    match 'events/:event_id/:group_id' => 'events#uninvite', :as => :uninvite, :via => :delete
    resources :roles, :only => [:index]
    resources :stories, :path => 'historias', :controller => "stories", :except => [:edit, :update]
  end

  match '/articles/family_is_the_most_important' => 'static_pages#family_is_the_most_important'

  match '/admin/roles/new' => 'admin/roles#new_empty', :via => :get
  match '/admin/roles/new' => 'admin/roles#create_empty', :via => :post
  match '/admin/roles/:name' => 'admin/roles#show', :via => [:post, :get], :as => :admin_role_show
  match '/admin/roles/:name' => 'admin/roles#destroy', :via => :delete, :as => '/admin/roles/update'
  match '/admin/roles/:name/permissions' => 'admin/permissions#add_permissions',:via => :post,
   :as => :admin_role_permissions

  root :to => 'home#index'

  match '/access_denied' => 'static_pages#access_denied', :as => :access_denied
  match '*rest' => 'static_pages#error_page', :as => :error_page



end
