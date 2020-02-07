Rails.application.routes.draw do
  get "/", to: 'main#index' #original was(get 'main/index')
  
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
