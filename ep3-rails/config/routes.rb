Rails.application.routes.draw do
  
  devise_for :users
  resources :produtos do
    resources :pedidos, only: [:new, :create]
end

  get 'pages/sobre'
  get 'pages/contato'
  get 'vendedor' => "produtos#vendedor"
  get 'vendas' => "pedidos#vendas"
  get 'compras' => "pedidos#compras"

  root 'produtos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
