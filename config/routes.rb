Rails.application.routes.draw do
  root :to => 'recommended_users#index'

  resources :users

  resources :user_steps

  resources :learn_languages

  resources :native_languages

  resources :sessions

  resources :comments

  resources :recommended_users
end
