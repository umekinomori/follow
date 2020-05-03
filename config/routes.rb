Rails.application.routes.draw do
  devise_for :users
  root 'users#index'
  resources :users, only: :show
  post 'follow/:id' => 'relationship#follow', as: "follow"
  post 'unfollow/:id' => 'relationship#unfollow', as: "unfollow"
end