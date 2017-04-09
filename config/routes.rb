Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'project', to: 'pages#project'
  get 'edu', to: 'pages#edu'
  get 'culture', to: 'pages#culture'
  get 'agriculture', to: 'pages#agriculture'
  get 'social', to: 'pages#social'
  get 'sport', to: 'pages#sport'
  get 'staff', to: 'pages#staff'
  get 'contacts', to: 'pages#contacts'
  get 'donations', to: 'pages#donations'
  resources :interns, only: [:new, :create]
  resources :volunteers, only: [:new, :create]
  resources :blog_posts, only: [:index, :show, :new, :create]
  resources :diary_posts, only: [:index, :show, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
