Rails.application.routes.draw do
  resources :warchests do
    resources :warchest_balances, only: [:index, :new, :create]

    collection do
      get :bulk_update_status
      post :update_statuses
    end
  end
  root "warchests#index"
end
