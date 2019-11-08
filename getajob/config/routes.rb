Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  get 'users/index'
  get 'students/show'
  get 'jobrecs/show'
  get 'schooladmins/show'
  root 'landings#index'
  resources :landings
  devise_for :users
  resources :users, :only =>[:show]
  resources :company_listings
  resources :student_profiles
  resources :students
  resources :jobrecs
  resources :schooladmins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
