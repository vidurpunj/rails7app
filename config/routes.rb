Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  resources :todos
  root to: 'todos#index'

  get '/login', to: 'dashboard#login', as: :login
  post '/login_submit', to: 'dashboard#login_submit', as: :login_submit
  post 'logout', to: 'dashboard#logout', as: :logout

end
