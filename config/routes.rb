Rails.application.routes.draw do
  # resources :markets, only: [:index, :show]
  root 'application#index'
  # get '/markets' => 'markets#index', as: 'markets'
  #
  get 'application/markets/:id' => 'application#show', as: 'markets'

  get 'application/market' => 'markets#index', as: 'market'
  get 'application/vendor' => 'vendors#index', as: 'vendor'

end

