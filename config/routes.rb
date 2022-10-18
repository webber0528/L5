Rails.application.routes.draw do
    resources:users
    resources:tweets
    root 'tweets#index'
    get 'top/main'
    post'top/login'
 
 
end
