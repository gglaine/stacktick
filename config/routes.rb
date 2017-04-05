Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount Attachinary::Engine => "/attachinary"
  devise_for :users

  resources :users

  resources :articles do
    resources :comments
  end

  resources :categories

  get 'welcome/index'

  root 'articles#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
