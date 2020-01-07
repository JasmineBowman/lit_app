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

    get "/options" => "options#index"
    get "/option/:id" => "options#show"
    post "/options" => "options#create"
    patch "/options/:id" => "options#update"
    delete "/options/:id" => "options#destroy"

    post "/sessions" => "sessions#create"
  end
end
