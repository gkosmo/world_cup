Rails.application.routes.draw do
  get 'credit_packs/index'
  resources :orders, only: [:show, :create]
  devise_for :users
  root to: 'pages#home'
  get 'vote_match', to: "pages#vote_match"
  get 'search', to: "pages#search"
  mount Pwa::Engine, at: ''
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
