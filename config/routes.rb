Rails.application.routes.draw do
  devise_for :usuarios

  resources :costureiras, only: %i[destroy edit index new create]
  resources :maquinas_costuras, only: %i[destroy edit index new create]
  resources :modelo_maquina, only: %i[destroy edit index new create]
  resources :usuarios, only: %i[destroy edit index new create]

  get "home/sair", to: "home#logout"

  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
