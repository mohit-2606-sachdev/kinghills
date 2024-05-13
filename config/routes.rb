Rails.application.routes.draw do
  get 'policies/show'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  get "policy/:policy_type", to: "policies#show"
  post 'subscribe', to: 'subscribers#create'
  post 'send_email', to: 'subscribers#send_email'
  get '/unsubscribe/:id', to: 'subscribers#destroy', as: 'unsubscribe'
  
end
