Rails.application.routes.draw do
  get 'hashtags/new'

root 'tweets#index'

  get 'users/new'

  get 'users/edit'

  get 'tweets/index'

  resources :tweets
  
  resources :hashtags
 

  resources :users

end


