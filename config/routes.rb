Rails.application.routes.draw do
  get 'pages/about'
  root 'courses#index'
  get 'about', to: 'pages#about'
end
