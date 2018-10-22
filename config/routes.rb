Rails.application.routes.draw do
  get 'dancers/isdancer'
  get '/button', to: 'input_info#button', as: 'button'
  resources :dancers_bio
  resources :input_info
  devise_for :users
    resources :dancers
    root to: 'dancers#show'
end
