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


###############
  get 'application/:id' => 'application#show', as: 'application'
end
