Rails.application.routes.draw do
  root to: "users#index"
  devise_for :users
  post '/plaids/plaid_link_token'
  resources :businesses do 
    get 'plaids_authenticated'
  end
end
