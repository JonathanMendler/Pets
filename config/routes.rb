Rails.application.routes.draw do
  resources :pets

  # Automatically generates the following routes
  # get "/photos" => "photos#index", as: "photos"
  # get "/photos/new" => "photos#new", as: "new_photo"
  # post "/photos" => "photos#create"
  # get "/photos/:id" => "photos#show", as: "photo"
  # get "/photos/:id/edit" => "photos#edit", as: "edit_photo"
  # patch "/photos/:id" => "photos#update"
  # delete "/photos/:id" => "photos#destroy"

  post "/users" => "users#create"
end
