Rails.application.routes.draw do
  
  devise_for :users
  resources :posts
  resources :users do
  	member do
  		get :following, :followers
  	end
  end
  resources :relationships,       only: [:create, :destroy]

  root 'pages#index'
  get '/home' => 'pages#home'
  get '/explore' => 'pages#explore'
  get '/user/:id' => 'pages#profile'

  match 'user/send_mail' => 'users#send_mail', via: :post


  
end
