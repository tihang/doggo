Rails.application.routes.draw do
  get 'posts/create'
  get 'posts/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'static_pages#home'
  # get "/about", to: "static_pages#about"
  devise_for :users, controllers: { confirmations: 'confirmations' }
  resources :dashboard, only: [:index, :edit]
  resources :posts, only: [:new, :create, :edit, :update, :destroy]
  resources :search, only: [:index, :show]
end
