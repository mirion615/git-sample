Rails.application.routes.draw do

  get 'chats/show'
  #get 'posts/index'
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
    end
  devise_for :users
 root to: "posts#index"

  resources :users
end
