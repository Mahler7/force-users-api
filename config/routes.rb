Rails.application.routes.draw do

  get '/force_users' => 'force_users#index'
  post '/force_users' => 'force_users#create'
  get '/force_users/:id' => 'force_users#show'
  patch '/force_users/:id' => 'force_users#update'
  delete '/force_users/:id' => 'force_users#destroy'

  
end
