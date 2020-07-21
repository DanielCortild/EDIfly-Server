Rails.application.routes.draw do
  devise_for :admins

  get '/messages', to: 'messages#index'
  post '/messages', to: 'messages#create'
  get '/downloaded_files', to: 'downloaded_files#index'
  post '/downloaded_files', to: 'api#downloaded_file'
  get '/', to: 'homes#index'
  get '/downloads', to: 'downloads#index'
  get '/api', to: 'api#index'

  resources :homes
  resources :faqs
  resources :whitepapers
  resources :testimonials
  resources :users
  resources :teams

end
