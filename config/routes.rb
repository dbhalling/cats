Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'cats#index'

  resources :cats, only: [:index, :show, :new, :create, :edit, :update]
  resources :cat_comments, only: [:create]
  resources :articles, only: [:show, :new, :create, :edit, :update]
  resources :article_comments, only: [:create]
  resources :sessions, only: [:new, :create]
  resources :contacts, only: [:index, :new, :create, :destroy]
  resources :cat_personality_test, only: [:index, :new, :create, :show]
  resources :about_me, only: [:index]

  get 'contacts/destroy_all', to: 'contacts#destroy_all'
end
