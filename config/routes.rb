Rails.application.routes.draw do
  root 'welcome#index'
  # resources :rooms
  resources :meetings
  resources :schedules
  resources :buildings, only: [:index, :show]
  resources :terms do
    resources :courses, only: [:index]
  end
  resources :instructors, only: [:index, :show]
  resources :courses do
    resources :students, only: [:index]
  end
  resources :departments, only: [:index, :show]
  resources :students do
    resources :schedules
    resources :terms do
      resources :courses, only: [:index]
    end
    resources :courses, only: [:index]
    collection do
      post '/login', to: 'students#login'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
