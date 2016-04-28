Rails.application.routes.draw do
  # resources :markets, only: [:index, :show]
  root 'application#index'
  # get '/markets' => 'markets#index', as: 'markets'
  #
  get 'application/markets' => 'markets#index', as: 'markets'


  post 'application/markets' => 'markets#create'
  get  'application/markets/new'  => 'markets#new'

  delete 'application/markets/:id' => 'markets#destroy'

  get 'application/markets/:id/edit' => 'markets#edit', as: 'edit_market'
  patch 'application/markets/:id' => 'markets#update'

#################

  get 'application/vendors' => 'vendors#index', as: 'vendors'

  post 'application/vendors' => 'vendors#create'
  get 'application/vendors/search' => 'vendors#search', as: 'search_vendor'
  get 'application/vendors/:id' => 'vendors#show', as: 'vendor'
  get  'application/vendors/new'  => 'vendors#new'

  delete 'application/vendors/:id' => 'vendors#destroy'

  get 'application/vendors/:id/edit' => 'vendors#edit', as: 'edit_vendor'
  patch 'application/vendors/:id' => 'vendors#update'

###############
  get 'application/:id' => 'application#show', as: 'application'
end
