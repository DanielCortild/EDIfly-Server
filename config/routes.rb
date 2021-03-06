Rails.application.routes.draw do
  resources :news
  devise_for :admins

  get '/messages', to: 'user_responses#messages'
  post '/messages', to: 'api#message'
  get '/downloaded_files', to: 'user_responses#downloaded_files'
  post '/downloaded_files', to: 'api#downloaded_file'
  get '/', to: 'homes#index'
  get '/downloads', to: 'downloads#index'
  get '/api', to: 'api#index'

  resources :homes
  resources :product_briefings
  resources :faqs
  resources :whitepapers
  resources :testimonials
  resources :blogs
  resources :users
  resources :teams

end
