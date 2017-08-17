Rails.application.routes.draw do
  root                                to: 'application#index',     as: 'index'
  get    '/login',                    to: 'sessions#new',          as: 'login'
  post   '/login',                    to: 'sessions#create',       as: 'sign_in'
  delete '/logout',                   to: 'sessions#destroy',      as: 'sign_out'

  get    '/spreedsheets',             to: 'spreed_sheets#index',   as: 'spreedsheets'
  post   '/spreedsheets/import',      to: 'spreed_sheets#import',  as: 'spreedsheets_import'
  delete '/spreedsheets/destroy/:id', to: 'spreed_sheets#destroy', as: 'spreedsheets_destroy'
end
