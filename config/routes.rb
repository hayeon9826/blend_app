Rails.application.routes.draw do
  get '/index' => 'home#index', as: :index
  get '/mypage' => "home#mypage", as: :mypage

  get '/subscription' => 'home#subscription', as: :subscription
  get '/menu' => 'home#menu', as: :menu

  root 'home#cover'

  resources :products
  resources :lectures
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
