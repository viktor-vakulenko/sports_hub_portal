Rails.application.routes.draw do
  devise_for :users
  resources :articles
  get 'home/index'
  root to: 'home#index'
  devise_scope :user do
    get 'users/sign_out' => 'devise/sessions#destroy'
    get 'sign_in' => 'devise/sessions#new'
  end
end
