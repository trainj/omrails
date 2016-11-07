Rails.application.routes.draw do
    ActiveAdmin.routes(self)
  devise_for :users
    as :user do
        get "signin", to: 'devise/sessions#new'
        delete "signout", to: 'devise/sessions#destroy'
        get 'signup', to: 'devise/registrations#new'
    end
   
    get 'feed', to: 'feed#show'
    
    resources :users, only: :show, param: :username do
        member do
            post 'follow', to: 'follows#create'
            delete 'unfollow', to: 'folloes#destroy'
        end
    end
    
    resources :oitems
    resources :tweets
    root 'pages#home'
    get 'about', to: 'pages#about'
    get 'contact', to: 'pages#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
