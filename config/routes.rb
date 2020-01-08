Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  
  namespace :api do
    get "/users" => "users#index"
    get "/user/:id" => "users#show"
    post "/users" => "users#create"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    get "/disciplines" => "disciplines#index"
    get "/discipline/:id" => "disciplines#show"
    post "/disciplines" => "disciplines#create"
    patch "/disciplines/:id" => "disciplines#update"
    delete "/disciplines/:id" => "disciplines#destroy"

    post "/sessions" => "sessions#create"
  end
end
