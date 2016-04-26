Rails.application.routes.draw do
  # resources :markets, only: [:index, :show]
  root 'markets#index'
end
