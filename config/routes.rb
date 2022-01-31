Rails.application.routes.draw do

  # resources :categories do
  #   # end
  devise_for :users
  resources :users, path: 'users-info', only: %i[show edit update]
  resources :articles do
    collection do
      get 'search'
    end
  end
  resources :categories do
    resources :articles
  end
  namespace :admin do
    resources :articles do
      collection do
        get 'search'
      end
    end
  end
  root to: 'home#index'
  devise_scope :user do
    get 'users/sign_out' => 'devise/sessions#destroy'
    get 'sign_in' => 'devise/sessions#new'
  end
end
