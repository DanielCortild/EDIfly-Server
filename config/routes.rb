Rails.application.routes.draw do
  get 'api/index'
  devise_for :admins
  get '/', to: 'homes#index'
  resources :homes
  resources :faqs
  resources :whitepapers
  resources :testimonials
  resources :users
  resources :teams
  get '/downloads', to: 'downloads#index'
  get '/api', to: 'api#index'
end
