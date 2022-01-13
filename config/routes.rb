Rails.application.routes.draw do
  resources :articles
  get 'home/index'
  root 'home#index'
end
