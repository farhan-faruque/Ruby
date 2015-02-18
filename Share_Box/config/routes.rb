Rails.application.routes.draw do
  resources :folders
  resources :assets
  devise_for :users

  match "assets/get/:id" => "assets#get", as: "download",via: [:get]

  match "browse/:folder_id" => "home#browse", as: "browse",via: [:get]
  match "browse/:folder_id/new_folder" => "folders#new", as: "new_sub_folder",via: [:get,:post]

  root :to => "home#index"
end
