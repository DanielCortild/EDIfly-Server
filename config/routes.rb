Rails.application.routes.draw do
  resources :blogs
  devise_for :admins

  get '/messages', to: 'user_responses#messages'
  post '/messages', to: 'api#message'
  get '/downloaded_files', to: 'user_responses#downloaded_files'
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
