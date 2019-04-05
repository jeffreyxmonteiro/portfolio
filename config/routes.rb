Rails.application.routes.draw do
  devise_for :users
  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  #get 'pages/home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "blogs/:id/toggle_status", to: 'blogs#toggle_status', as: :toggle_status_blog
  get "blogs", to: 'blogs#index'


  post "blogs", to: 'blogs#create'
  get "blogs/new", to: 'blogs#new', as: :new_blog

  get "blogs/:id/edit", to: 'blogs#edit', as: :edit_blog
  get "blogs/:id", to: 'blogs#show', as: :blog
  patch "blogs/:id", to: 'blogs#update'
  delete "blogs/:id", to: 'blogs#destroy'

  root to: 'pages#home'
end
