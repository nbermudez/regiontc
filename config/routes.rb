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

  namespace :admin do
    resources :resources, :path => 'recursos' do
      resources :tags, :controller => "tags"
    end
    resources :users    
    resources :events
  end

  root :to => 'home#index'

end
