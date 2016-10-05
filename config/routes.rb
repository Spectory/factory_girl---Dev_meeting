TddTemplate::Application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/home'

  resources :articles do
  resources :comments
end

  get '/robots.txt', to: 'application#robots'
  
end
