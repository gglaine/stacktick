Rails.application.routes.draw do

  root 'articles#index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount Attachinary::Engine => "/attachinary"

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :users

  get 'archives/index'

  get 'techmemes', to: 'techmemes#index'
  get 'hackernews', to: 'hackernews#index'
  get 'techcrunches', to: 'techcrunches#index'
  get 'lewagon/blog', to: 'wagonsposts#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
