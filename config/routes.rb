Rails.application.routes.draw do
  get 'books' => 'books#new', as: 'new'
  root :to => 'homes#top'
  post 'books' => 'books#create'
  get 'books/index/:id' => 'books#index', as: 'index'
  get 'books/:id' => 'books#show', as: 'show'
  get 'books/:id/edit' => 'books#edit', as: 'edit'
  patch 'books/:id' => 'books#update', as: 'update'
  delete 'books/:id' => 'books#destroy', as: 'destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
