Rails.application.routes.draw do
  root "pages#index"

  get "sobre", to: "pages#sobre"
  get "contato", to: "pages#contato"

  resources :seguros, only: [:index, :show]

  namespace :admin do
    root "dashboard#index"
    resources :seguros
    resources :clientes
    resources :mensagens, only: [:index, :destroy]
    resources :usuarios
  end
end