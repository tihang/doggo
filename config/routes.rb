Rails.application.routes.draw do
  devise_for :users
  root to: 'static_pages#home'
  get "/about", to: "static_pages#about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :dashboard
end
