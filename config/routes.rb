Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/bookings" => "bookings#index" #user can view all bookings
  post "/bookings" => "bookings#create" #user can create new booking
end
