Rails.application.routes.draw do
  root to: 'application#index', as: 'index'
  get 'sessions/new'
  get    '/login',   to: 'sessions#new',     as: 'get_login'
  post   '/login',   to: 'sessions#create',  as: 'post_login'
  delete '/logout',  to: 'sessions#destroy', as: 'destroy_login'

  resources :users
end
