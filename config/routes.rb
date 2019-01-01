Rails.application.routes.draw do
  
 
  root to: 'post_cards#index'
  resources :post_cards, only: [:index , :show]
  resources :order_items
  resource :carts, only: [:show]




  get '/login', to: 'admin/sessions#new'
  get '/logout', to: 'admin/sessions#destroy'

  namespace :admin do
    resources :traivans, only: [:index, :edit, :update]
    resources :sessions, only: [:new, :create, :destroy]
    resources :post_cards
    resources :dashboards, only: [:index]
    
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
