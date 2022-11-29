Rails.application.routes.draw do
  resources :buses
  resources :routes
  namespace :forest do
    post '/actions/add_students' => 'student#change'
    post '/actions/add'=>'student#change'
    post '/actions/create'=>'route#calculate'

  end
  mount ForestLiana::Engine => '/forest'
  resources :students
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
