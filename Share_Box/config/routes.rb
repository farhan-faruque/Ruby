Rails.application.routes.draw do
  resources :folders
  resources :assets
  devise_for :users

  match "assets/get/:id" => "assets#get", as: "download",via: [:get]

  match "browse/:folder_id" => "home#browse", as: "browse",via: [:get]
  match "browse/:folder_id/new_folder" => "folders#new", as: "new_sub_folder",via: [:get,:post]
  match "browse/:folder_id/new_file" => "assets#new", :as => "new_sub_file",via: [:get,:post]

  #for renaming a folder
  match "browse/:folder_id/rename" => "folders#edit", :as => "rename_folder",via: [:get,:put]

  #for sharing the folder
  match "home/share" => "home#share",via: [:post]

  root :to => "home#index"
end
