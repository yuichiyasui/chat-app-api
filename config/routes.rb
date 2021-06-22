Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/rooms', to: 'rooms#show'
  post '/rooms', to: 'rooms#create'
  post '/users', to: 'users#register'
end
