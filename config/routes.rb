Rails.application.routes.draw do
  # resources :markets, only: [:index, :show]
  root 'welcome#index'
  get '/welcome' => 'welcome#index', as: 'welcome'

  resources :markets
  get 'application/vendors/searchasmark' => 'vendors#searchasmark', as: 'vendor_search'
  #################

  get 'application/vendors/search' => 'vendors#search', as: 'search_vendor'

  get 'application/vendors/product/search' => 'products#search', as: 'search_product'

  get 'application/vendors/sale/new' => 'sales#new', as: 'sale_new'
  post   'application/vendors/sale/new'    => 'sales#create', as: 'sale_create'

  ###############
  resources :vendors do
    resources :products
  end

end
