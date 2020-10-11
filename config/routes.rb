Rails.application.routes.draw do
devise_for :users
root to: 'tops#top'
 
resources :books
resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
