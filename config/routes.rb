Rails.application.routes.draw do
  # resources :markets, only: [:index, :show]
  root 'markets#index'
  get '/markets' => 'markets#index', as: 'markets'

  get '/markets/:id' => 'markets#show', as: 'market'
end

#leah's pull test comment
