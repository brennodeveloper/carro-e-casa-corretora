Rails.application.routes.draw do
  get 'errors/not_found'
  get 'errors/internal_server_error'
  get 'errors/unprocessable_entity'
  root "pages#index"

  get "sobre", to: "pages#sobre"
  get "contato", to: "pages#contato"

  resources :seguros, only: [:index, :show]

  match "/404", to: "errors#not_found", via: :all
  match "/500", to: "errors#internal_server_error", via: :all
  match "/422", to: "errors#unprocessable_entity", via: :all

  namespace :admin do
    root "dashboard#index"
    resources :seguros
    resources :clientes
    resources :mensagens, only: [:index, :destroy]
    resources :usuarios
  end
end