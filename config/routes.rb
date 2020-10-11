Rails.application.routes.draw do
devise_for :users
root to: 'tops#top'
  # get 'books/new'
  # get 'books/create'
  # get 'books/index'
  # get 'books/show'
  # get 'books/destroy'
  # get 'users/show' 
  # get 'users/edit'
  # get 'users/update'
  resources :books
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
