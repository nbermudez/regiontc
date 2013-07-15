Regionsps::Application.routes.draw do

  resources :events, :only => [:index]
  resources :sessions, :only => [:new, :create, :destroy]
  
  match '/recursos'              => 'resources#categories'
  match '/recursos/:id'          => 'resources#index', :as => :recursos_f
  match '/recursos/:c_id/:t_id'  => 'resources#bytag', :as => :recursos_t
  match '/nosotros'              => 'static_pages#about_us'
  match '/admin'                 => 'sessions#admin'
  match '/signin'                => 'sessions#create', :via => :post
  match '/signin'                => 'sessions#admin', :via => :get
  match '/signout'               => 'sessions#destroy'
  match '/historias'             => 'stories#index', :via => :get

  namespace :admin do
    resources :resources, :path => 'recursos' do
      resources :tags, :controller => "tags"
    end
    match 'recursos/new_tag/:id' => 'resources#new_tag', :as => :new_tag, :via => :post
    match 'recursos/add_tag/:id' => 'resources#add_tag', :as => :add_tag, :via => :post

    resources :users, :path => 'usuarios' do
      resources :roles, :except => [:index, :show]
      resources :groups, :path => 'grupos', :only => [:new, :create, :destroy]
    end    
    resources :events
    match 'events/:id/' => 'events#invite', :as => :invite, :via => :post
    match 'events/:event_id/:group_id' => 'events#uninvite', :as => :uninvite, :via => :delete
    resources :roles, :only => [:index]
    resources :stories, :path => 'historias', :controller => "stories", :except => [:edit, :update]
    
    resources :categories, :path => 'categorias'
    match 'categorias/:id/' => 'categories#add_tag', :as => :add_tag, :via => :post
    match 'categorias/:category_id/:tag_id' => 'categories#remove_tag', :as => :remove_tag, :via => :delete
  end

  match '/articulos/articulo1' => 'static_pages#articulo1', :as => :articulo1
  match '/articulos/articulo2' => 'static_pages#articulo2', :as => :articulo2
  match '/articulos/articulo3' => 'static_pages#articulo3', :as => :articulo3
  match '/articulos/articulo4' => 'static_pages#articulo4', :as => :articulo4
  match '/articulos/articulo5' => 'static_pages#articulo5', :as => :articulo5

  match '/admin/roles/new' => 'admin/roles#new_empty', :via => :get
  match '/admin/roles/new' => 'admin/roles#create_empty', :via => :post
  match '/admin/roles/:name' => 'admin/roles#show', :via => [:post, :get], :as => :admin_role_show
  match '/admin/roles/:name' => 'admin/roles#destroy', :via => :delete, :as => '/admin/roles/update'
  match '/admin/roles/:name/permissions' => 'admin/permissions#add_permissions',:via => :post,
   :as => :admin_role_permissions

  root :to => 'home#index'

  match '/access_denied' => 'static_pages#access_denied', :as => :access_denied
  match '/*rest' => 'static_pages#error_page', :as => :error_page



end
