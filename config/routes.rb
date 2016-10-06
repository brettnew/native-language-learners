Rails.application.routes.draw do
  root :to => 'featured_users#index'

  resources :users

  resources :user_steps

  resources :learn_languages

  resources :native_languages

  resources :sessions

  resources :comments

  resources :recommended_users

  resources :featured_users

  resources :conversations do
    resources :messages
  end
end
