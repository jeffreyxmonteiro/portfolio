Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "blogs", to: 'blogs#index'


  post "blogs", to: 'blogs#create'
  get "blogs/new", to: 'blogs#new', as: :new_blog

  get "blogs/:id/edit", to: 'blogs#edit', as: :edit_blog
  get "blogs/:id", to: 'blogs#show', as: :blog
  patch "blogs/:id", to: 'blogs#update'
  delete "blogs/:id", to: 'blogs#destroy'
end
