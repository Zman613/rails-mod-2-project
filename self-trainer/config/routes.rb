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
end
