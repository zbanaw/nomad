Rails.application.routes.draw do
  root 'coaches#index'

  resources :coaches, only: :index
  resources :appointments
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
