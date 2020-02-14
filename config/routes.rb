Rails.application.routes.draw do
  devise_for :users
  get 'main/index'
  resources :articles do
    resources :comments
  end
  resources :followers, only: [:create]
 
  root 'main#index' 
end
