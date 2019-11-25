Rails.application.routes.draw do
  get 'pages/about'
  root 'courses#index'
  get 'courses/new', to: 'courses#new'
  get 'about', to: 'pages#about'
end
