Rails.application.routes.draw do
  # resources :markets, only: [:index, :show]
  root 'application#index'
  # get '/markets' => 'markets#index', as: 'markets'
  #
  get 'application/markets' => 'markets#index', as: 'markets'


  post 'application/markets' => 'markets#create_market'
  get  'application/markets/new'  => 'markets#new_market'

  delete 'application/markets/:id' => 'markets#destroy_market'

  get 'application/markets/search' => 'markets#search_market', as: 'search_market'
  get 'application/markets/:id/edit' => 'markets#edit_market', as: 'edit_market'
  patch 'application/markets/:id' => 'markets#update_market'

#################

  get 'application/vendors' => 'vendors#index', as: 'vendors'
  post 'application/vendors' => 'vendors#create'
  get 'application/vendors/search' => 'vendors#search', as: 'search_vendor'
  get 'application/vendors/:id' => 'vendors#show', as: 'vendor'

  get 'application/vendors/product/search' => 'products#search', as: 'search_product'
  get 'application/vendors/product/:id' => 'products#show', as: 'product'

  get    'application/vendors/product/:id/edit' => 'products#edit', as: 'product_edit'
  patch  'application/vendors/product/:id'      => 'products#update', as: 'product_update'
  
  delete 'application/vendors/product/:id'      => 'products#destroy', as: 'product_delete'

  get  'application/vendors/new'  => 'vendors#new'

  delete 'application/vendors/:id' => 'vendors#destroy'

  get 'application/vendors/:id/edit' => 'vendors#edit', as: 'edit_vendor'
  patch 'application/vendors/:id' => 'vendors#update'

###############
  get 'application/:id' => 'application#show', as: 'application'
end
