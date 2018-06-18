Rails.application.routes.draw do
  devise_for :users
    resources :dancers
    root to: 'dancers#index'
end
