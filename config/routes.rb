Rails.application.routes.draw do
  
 

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

    root to: 'notes#index'
    get "/", to: 'notes#index'
    get "/notes", to: 'notes#index'
    get "/notes/new", to: 'notes#new'
    post "/notes/new", to: 'notes#create'
    delete "/notes/:id", to: 'notes#destroy'
    get "/notes/:id", to: 'notes#show'
    get "/notes/:id/edit", to: 'notes#edit'
    post "/notes/:id/edit", to: 'notes#update'

    get "/notes/destination/:id", to: 'destination#index'

    post "/vote/:id/good", to: 'vote#good'
    post "vote/:id/bad", to: 'vote#bad'
    post "vote/:id/rating", to: 'vote#rating'

    get "/images/:id/new", to: 'images#new'
    post "/images/:id/new", to: 'images#create'

    get "/comments/:id/new", to: 'comments#new'
    post "/comments/:id/new", to: 'comments#create'

    get "/images", to: 'images#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
