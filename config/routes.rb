Rails.application.routes.draw do
  get 'usuarios/index'

  get 'usuarios/create'

  get 'usuarios/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'publicacion#index'
  get 'publicacion' => 'publicacion#index'
  get 'publicacion/new' => 'publicacion#new'
  post 'publicacion/create' => 'publicacion#create'
  get 'send/index' => 'send#index'
  post 'send/index' => 'send#create'
  get 'administrador/index' => 'administrador#index'
  resources :sessions, only: [:new, :create, :destroy]
  get '/signin',  to: 'sessions#new'
  get '/signout', to: 'sessions#destroy'
end
