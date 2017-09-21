Rails.application.routes.draw do
  root to: 'pages#home'
  resources :pages

  devise_for :users
  resources :profiles, only: [:new, :edit, :create, :update]
end
