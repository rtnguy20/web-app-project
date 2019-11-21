Rails.application.routes.draw do
  get 'contact/index'

  resources :professors
  post '/rate' => 'rater#create', :as => 'rate'
  get 'users/index'
  get 'students/show'
  get 'jobrecs/show'
  get 'schooladmins/show'
  root 'landings#index'
  resources :contact, only: [:index, :new, :create]
  resources :landings
  devise_for :users
  resources :users, :only =>[:show]
  resources :company_listings
  resources :students
  resources :jobrecs
   delete "/users/:id" => "users#destroy", as: :admin
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
