Rails.application.routes.draw do
  resources :payments
  resources :suppliers
  resources :purchases
  resources :sales
  resources :categories
  resources :drugs
  devise_for :users
  root to: 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
