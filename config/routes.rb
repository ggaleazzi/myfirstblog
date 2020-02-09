Rails.application.routes.draw do
  get 'main/index'
  resources :articles do
    resources :comments
  end
 
  root 'main#index' 
end
