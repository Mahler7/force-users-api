Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      get '/force_users' => 'force_users#index'
      post '/force_users' => 'force_users#create'
      get '/force_users/:id' => 'force_users#show'
      patch '/force_users/:id' => 'force_users#update'
      delete '/force_users/:id' => 'force_users#destroy'
    end
  end
end
