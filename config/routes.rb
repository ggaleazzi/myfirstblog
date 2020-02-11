Rails.application.routes.draw do
  devise_for :users
  get 'main/index'
  resources :articles do
    resources :comments
  end
 
  root 'main#index' 
end
