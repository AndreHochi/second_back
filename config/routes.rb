Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do 
    namespace :v1 do 
      resources :users
      post '/login', to: "auth#login" 
      post '/signup', to: "users#create"
      get '/getobjectives', to: "objectives#getUserObjectives"
      get '/getlinks', to: "links#getUserLinks"
      patch '/updateUser', to: "users#update"
      post '/newObjNoLink', to: 'objectives#createNoLink'
      post '/newObjLink', to: 'objectives#newObjLink'
      delete '/deleteObj', to: 'objectives#deleteObj'
      delete '/deleteUser', to: 'users#delete'
      patch '/editObj', to: 'objectives#editObj'
    end
  end
end
