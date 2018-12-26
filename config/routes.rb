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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  
end
