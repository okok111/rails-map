Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  get '/', to: 'directions#new'
  post '/directions', to: 'directions#create', as: 'create_direction'
  get '/result/:start_location/:end_location/:waypoint', to: 'directions#result', as: 'result'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :posts do
  #   resources :likes, only: [:create, :destroy]
  #   resources :comments, only: [:create]
  # end
  # root 'posts#index'
end
