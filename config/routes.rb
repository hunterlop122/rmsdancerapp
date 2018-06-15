Rails.application.routes.draw do
    resources :dancers
    root                  'dancers#index'
end
