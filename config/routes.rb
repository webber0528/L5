Rails.application.routes.draw do
    resources:users
    resources:tweets
    
    root 'tweets#index'
    get 'top/login'
    get 'top/main'
    get 'top/logout'
    post'top/login'
    
    resources :likes
    post 'likes', to: 'likes#create'
    delete 'likes/id', to: 'likes#destroy'
  end
