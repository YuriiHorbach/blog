Rails.application.routes.draw do
  root 'posts#index'
  resources :posts
  post 'uploader/image', to: 'uploader#image'
end
