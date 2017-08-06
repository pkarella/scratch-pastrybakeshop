Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  root 'welcome#index'
  resources :order_items
  resource :cart, only: [:show]
  resources :products do
    resources :reviews
  end
end
