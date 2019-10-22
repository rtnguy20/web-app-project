Rails.application.routes.draw do
  resources :student_profiles
  resources :loggings
  resources :students
  resources :jobrecs
  resources :schooladmins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
