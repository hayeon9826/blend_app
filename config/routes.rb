Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users

  get '/index' => 'home#index', as: :index
  get '/mypage' => "home#mypage", as: :mypage

  get '/subscription' => 'home#subscription', as: :subscription
  get '/menu' => 'home#menu', as: :menu

  root 'home#cover'

  resources :products
  resources :lectures do
    get :search
  end

  resources :comments

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
