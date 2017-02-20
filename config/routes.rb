Rails.application.routes.draw do
  get "/" => "restaurants#index"
  get "/:id/new_order" => "restaurants#new_order"
  post "/:id" => "restaurants#create_order"
  get "/:id" => "restaurants#show" 
end
