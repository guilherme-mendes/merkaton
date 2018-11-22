Rails.application.routes.draw do
  resources :produtos
  get 'pages/sobre'
  get 'pages/contato'

  root 'produtos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
