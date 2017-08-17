Rails.application.routes.draw do
  root                           to: 'application#index',    as: 'index'
  get    '/login',               to: 'sessions#new',         as: 'get_login'
  post   '/login',               to: 'sessions#create',      as: 'post_login'
  delete '/logout',              to: 'sessions#destroy',     as: 'destroy_login'

  get    '/spreedsheets',        to: 'spreed_sheets#index',  as: 'spreedsheets'
  post   '/spreedsheets/import', to: 'spreed_sheets#import', as: 'spreedsheets_import'
end
