Rails.application.routes.draw do
  root 'lists#index'
  resources :lists, only: %i[index new create show destroy] do
    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, only: %i[destroy]
end
