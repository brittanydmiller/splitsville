Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :assets, only: [:index, :show]
  resources :bills, only: :create
end
