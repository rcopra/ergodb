Rails.application.routes.draw do
  devise_for :users

  # Root route for the landing page
  root to: "pages#home"

  # Route for the user dashboard
  get 'dashboard', to: 'pages#dashboard'

  # Resource routes for keyboards
  resources :keyboards, only: [:index, :show]

  # Other routes as needed
end
