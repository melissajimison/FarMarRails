Rails.application.routes.draw do
  # resources :markets, only: [:index, :show]
  root 'welcome#index'
  get '/welcome' => 'welcome#index', as: 'welcome'
  get '/welcome/:id' => 'welcome#show', as: 'marketinfo'

  get '/markets/search' => 'markets#search', as: 'search_market'
  get '/vendors/search' => 'vendors#search', as: 'search_vendor'

  resources :markets
  #################

  get 'application/vendors/product/search' => 'products#search', as: 'search_product'

  ###############
  resources :vendors do
    resources :products
    resources :sales, :only => [:new, :create]

  end

end
