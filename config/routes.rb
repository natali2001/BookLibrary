Rails.application.routes.draw do
  get 'books/index'
  get 'books/create'
  get 'books/new'
  get 'books/show'
  get 'books/update'
  get 'books/edit'
  get 'books/destroy'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'welcome' => 'pages#home'

  get 'tales' => 'genre#tales'
  get 'group' => 'genre#index'

  get 'books' => 'books#index'
  get 'authors' => 'authors#index'

  resources :books
  resources :authors


end
