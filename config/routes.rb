Rails.application.routes.draw do
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', controller: 'finder', action: 'index'
  get '/alphabetized', controller: 'finder', action: 'alphabetized'
  get '/missing_email', controller: 'finder', action: 'missing_email'
end
