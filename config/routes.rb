Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/posts', to: 'posts#index', as: :main
  get '/posts/new', to: 'posts#new'
  get '/posts/:id', to: 'posts#show', as: :post
  post '/posts', to: 'posts#create'
  get '/posts/:id/edit', to: 'posts#edit', as: :edit
  patch '/posts/:id', to: 'posts#update'
  delete '/posts/:id', to: 'posts#delete'
end
