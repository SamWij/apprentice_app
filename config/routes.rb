Rails.application.routes.draw do
  get 'sessions/new'

  root 'static_pages#home'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/profile', to: 'users#profile'
  resources :users

  resources :qualifications
  resources :licenses
  resources :work_experiences
end
