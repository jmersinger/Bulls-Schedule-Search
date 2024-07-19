Rails.application.routes.draw do
  resources :reg_classes do
    collection do
      get 'events'
    end
  end
  resources :courses
  resources :avail_courses
  devise_for :users, controllers:{
    registrations: 'users/registrations'
  }
  get 'signed_in/index'
  get 'signed_in/search_classes'
  get 'signed_in/register'
  get 'signed_in/view_schedule'
  get 'signed_in/active_registration'
  get 'signed_in/past_classes'

  get 'main_page/index'
  get 'main_page/login'
  get 'main_page/signup'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  root "main_page#index"
  # Defines the root path route ("/")
  # root "posts#index"
  get '/about' => 'static#about'
  get '/calendar' => 'static#calendar'
end
