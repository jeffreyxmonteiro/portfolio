Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "blogs", to: 'blogs#index'
  get "blogs/:id", to: 'blogs#show', as: :blog
  get "blogs/new", to: 'blogs#new', as: :new_blog
  post "blogs", to: 'blogs#create'
  get "blogs/:id/edit", to: 'blogs#edit', as: :edit_blog
  patch "blogs/:id", to: 'blogs#update'
  delete "blogs/:id", to: 'blogs#destroy'
end
