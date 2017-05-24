Rails.application.routes.draw do
  resources :rooms
  resources :meetings
  resources :schedules
  resources :courses
  resources :buildings
  resources :terms
  resources :instructors
  resources :departments
  resources :students do
    collection do
      post '/login', to: 'students#login'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
