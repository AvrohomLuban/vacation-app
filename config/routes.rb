Rails.application.routes.draw do
  
  devise_for :users
    root to: 'notes#index'
    get "/", to: 'notes#index'
    get "/notes", to: 'notes#index'
    get "/notes/new", to: 'notes#new'
    post "/notes/new", to: 'notes#create'
    delete "/notes/:id", to: 'notes#destroy'
    get "/notes/:id", to: 'notes#show'
    get "/notes/:id/edit", to: 'notes#edit'
    post "/notes/:id/edit", to: 'notes#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
