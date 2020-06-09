Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users

  get '/index' => 'home#index', as: :index
  get '/mypage' => "home#mypage", as: :mypage
  get '/my_lecture' => "home#my_lecture", as: :my_lecture
  get '/my_comment' => "home#my_comment", as: :my_comment

  get '/subscription' => 'home#subscription', as: :subscription
  get '/menu' => 'home#menu', as: :menu

  root 'home#cover'

  resources :products do
    member do
      get :toggle
    end
  end

  resources :lectures do
    get :search
    member do
      get :toggle
    end
    collection do
      get :success
    end
  end

  resources :comments
  resources :orders
  resources :donations do
    collection do
      get :success
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
