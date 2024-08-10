Rails.application.routes.draw do
  resources :warchests do
    resources :warchest_balances, only: [:index, :new, :create]
  end
  root "warchests#index"
end
