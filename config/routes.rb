Rails.application.routes.draw do
  root :to => 'users#index'

  resources :users

  resources :user_steps

  resources :languages

  resources :sessions

  resources :comments
end
