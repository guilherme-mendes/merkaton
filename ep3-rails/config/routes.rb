Rails.application.routes.draw do
  resources :pedidos
  devise_for :users
  resources :produtos
  get 'pages/sobre'
  get 'pages/contato'
  get 'vendedor' => "produtos#vendedor"

  root 'produtos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
