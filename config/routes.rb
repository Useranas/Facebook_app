Rails.application.routes.draw do
  devise_for :users
  root 'welcomes#index'
  authenticated :user do
    root 'welcome#index', as: :authenticated_root
  end
  
  get 'index_register', to: 'welcomes#index_register'
  get 'newsfeed_people_nearby', to: 'welcomes#newsfeed_people_nearby'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
