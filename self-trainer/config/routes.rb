Rails.application.routes.draw do
  resources :weight_trackers
  resources :nutrition_trackers
  resources :workout_trackers
  resources :histories
  resources :nutritions
  resources :diaries
  resources :schedules
  resources :workouts
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'users#home', as: 'home'
  # Password routes
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create', as: 'create_login'
  post '/logout', to: 'sessions#destroy', as: 'logout'
  # plan routes
  get '/plan', to: 'users#plan', as: 'plan'
  get '/new-plan', to: 'users#new_plan', as: 'new_plan'
  post '/create-plan', to: 'users#create_plan', as: 'create_plan'
  
end
