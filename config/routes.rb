Rails.application.routes.draw do
  root 'post#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/new' => 'post#new'
  post '/create' => 'post#create'
  get '/show/:id' => 'post#show'
  get '/destroy/:id' => 'post#destroy'
end