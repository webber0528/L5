Rails.application.routes.draw do
    resources:users
    resources:tweets
    
    root 'tweets#index'
    get 'top/main'
    get 'top/logout'
    post'top/login'
  end
