Rails.application.routes.draw do



  get 'archives/index'

  get 'users/show'

  get 'techmemes', to: 'techmemes#index'

  get 'hackernews', to: 'hackernews#index'

  get 'techcrunches', to: 'techcrunches#index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount Attachinary::Engine => "/attachinary"
  devise_for :users

  resources :users

  resources :archives

  resources :articles do
    resources :comments
  end

  resources :categories

  get 'courses/index'

  get 'welcome/index'

  root 'articles#index'
  #
  # root 'welcome#scrape_hn'

  # get'application/scrape' to: 'application#scrape'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
