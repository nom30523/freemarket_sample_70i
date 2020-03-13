Rails.application.routes.draw do
  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }
  root "products#index"
  resources :users, only: [:new, :create, :show, :destroy]
  resources :products, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :categories, only: [:index, :show]

end