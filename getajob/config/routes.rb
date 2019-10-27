Rails.application.routes.draw do
  resources :landings
  devise_for :users
  resources :company_listings
  resources :student_profiles
  resources :students
  resources :jobrecs
  resources :schooladmins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
