Rails.application.routes.draw do

  get 'chats/show'
  #get 'posts/index'

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  devise_for :users


  get 'chat/:id', to: 'chats#show', as: 'chat'

  resources :users
  resources :chats, only: [:create]
  
  root to: "posts#index"
  resources :posts 
end
