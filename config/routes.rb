Rails.application.routes.draw do
  # resources :markets, only: [:index, :show]
  root 'welcome#index'
  resources :markets

  get '/welcome' => 'welcome#index', as: 'welcome'
  # get 'application/markets' => 'markets#index', as: 'markets'
  #
  #
  # post 'application/markets' => 'markets#create'
  # get  'application/markets/new'  => 'markets#new', as: 'new_market'
  #
  # delete 'application/markets/:id' => 'markets#destroy', as: 'destroy_market'
  #
 get 'markets/search' => 'markets#search', as: 'search_market'
  # get 'application/markets/:id/edit' => 'markets#edit', as: 'edit_market'
  # patch 'application/markets/:id' => 'markets#update', as: 'update_market'

  get 'application/vendors/searchasmark' => 'vendors#searchasmark', as: 'vendor_search'
#################

  get 'application/vendors' => 'vendors#index', as: 'vendors'


  post 'application/vendors' => 'vendors#create'
  get  'application/vendors/new'  => 'vendors#new', as: 'new_vendor'
  get 'application/vendors/search' => 'vendors#search', as: 'search_vendor'

  delete 'application/vendors/:id' => 'vendors#destroy', as: 'destroy_vendor'
  get 'application/vendors/:id/edit' => 'vendors#edit', as: 'edit_vendor'
  patch 'application/vendors/:id' => 'vendors#update', as: 'update_vendor'
  get 'application/vendors/:id' => 'vendors#show', as: 'vendor'

  get 'application/vendors/product/new' => 'products#new', as: 'product_new'
  post   'application/vendors/product/new'    => 'products#create', as: 'product_create'

  get 'application/vendors/product/search' => 'products#search', as: 'search_product'
  get 'application/vendors/product/:id' => 'products#show', as: 'product'

  get    'application/vendors/product/:id/edit' => 'products#edit', as: 'product_edit'
  patch  'application/vendors/product/:id'      => 'products#update', as: 'product_update'

  delete 'application/vendors/product/:id'      => 'products#destroy', as: 'product_delete'

  get 'application/vendors/sale/new' => 'sales#new', as: 'sale_new'
  post   'application/vendors/sale/new'    => 'sales#create', as: 'sale_create'



###############
  get 'application/:id' => 'application#show', as: 'application'
end
