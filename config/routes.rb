Rails.application.routes.draw do

  devise_for :users, :controllers => {
    :sessions => "users/sessions",
    :registrations => "users/registrations"
  }
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
    resources :categories do
      get 'sub_categories'
      resources :articles
    end
    resources :articles do
      collection do
        get 'search'
      end
    end
    resources :home
    root to: 'home#index'
  end
  root to: 'home#index'
  devise_scope :user do
    get 'users/sign_out' => 'devise/sessions#destroy'
    get 'sign_in' => 'devise/sessions#new'
  end
end
