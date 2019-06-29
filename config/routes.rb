Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  get "histories/my_index"
  resources :histories
  root "histories#index"
  get "users/admins"
  post 'users', to: 'users#admins'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
