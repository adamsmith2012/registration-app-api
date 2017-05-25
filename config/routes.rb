Rails.application.routes.draw do
  root 'welcome#index'
  # resources :rooms
  # resources :meetings
  # resources :schedules
  # resources :buildings
  # resources :terms
  # resources :instructors
  resources :courses do
    resources :students, only: [:index]
  end
  # resources :departments do
  #   resources :courses, only: [:index]
  # end
  resources :students do
    resources :courses, only: [:index]
    collection do
      post '/login', to: 'students#login'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
