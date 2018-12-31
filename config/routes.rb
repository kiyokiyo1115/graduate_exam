Rails.application.routes.draw do
  root to: 'tops#index' 
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :users, only: [:show] do
    collection do
      post :confirm
    end
    member do
        post 'review'
        get 'review'
    end
  end
  get 'users/review', to: 'users#review'
  get 'exams/show'
  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy" 
  end

  resources :users, :only => [:index, :show]
  resources :reviews, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end