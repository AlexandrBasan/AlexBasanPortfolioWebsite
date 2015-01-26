SampleApp::Application.routes.draw do

  #resources :contacts

  resources :newsletters

  # http://guides.rubyonrails.org/i18n.html
  scope "/:locale" do
  end

  get '/blogs_:content_type' => 'blogs#index', as: 'blogs_content_type'
  resources :users
  resources :sessions,      only: [:new, :create, :destroy]
  resources :blogs
  root to: 'static_pages#home'
  match '/mobile_projects', to: 'static_pages#mobile_projects', via: 'get'
  match '/more_websites', to: 'static_pages#more_websites', via: 'get'
  match '/more_saas_projects', to: 'static_pages#more_saas_projects', via: 'get'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  #match '/help',    to: 'static_pages#help',    via: 'get'
  #match '/about',   to: 'static_pages#about',   via: 'get'
  #match '/contact', to: 'static_pages#contact', via: 'get'


  get 'sitemap.xml', to: 'sitemap#index', as: 'sitemap', defaults: { format: 'xml' }

end
