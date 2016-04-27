Rails.application.routes.draw do
  # resources :markets, only: [:index, :show]
  root 'application#index'
  # get '/markets' => 'markets#index', as: 'markets'
  #
  get 'application/markets/:id' => 'markets#show', as: 'market'


end

#leah's pull test comment
