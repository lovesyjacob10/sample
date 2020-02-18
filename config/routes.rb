Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/tweets' => 'tweets#index'
  get '/tweets/new' => 'tweets#new'
  post '/tweets' => 'tweets#create'
  get '/tweets/:id' => 'tweets#show'
  get '/tweets/:id/edit' => 'tweets#edit'
  put '/tweets/:id' => 'tweets#update'
  delete '/tweets/:id' => 'tweets#destroy'


  get '/comments/new' => 'comment#new'
  post '/comments' => 'comment#create'

end
