Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/rooms', to: 'rooms#show'
  get '/rooms/:id', to: 'rooms#fetch'
  post '/rooms', to: 'rooms#create'
  get '/users/:id', to: 'users#fetch'
  post '/users', to: 'users#register'
end
