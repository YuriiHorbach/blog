Rails.application.routes.draw do
  root 'posts#index'
  resources :posts
  resources :tags, only: [:show]

  post 'uploader/image', to: 'uploader#image'
end
