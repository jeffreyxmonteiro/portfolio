Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :portfolios, except: [:show] do
    put :sort, on: :collection
  end
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  #get 'pages/home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'tech-news', to: 'pages#tech_news'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  root to: 'pages#home'
end
