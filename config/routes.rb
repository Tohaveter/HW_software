Rails.application.routes.draw do
  devise_for :users
  get 'static_pages/landing_page'
  get 'static_pages/dashboard'
  root 'static_pages#landing_page'
  get 'hello', to: 'greetings#hello', as: 'home'
  get 'index', to: 'posts#index', as:'index'
  resources:posts 
  get "up" => "rails/health#show", as: :rails_health_check

end
