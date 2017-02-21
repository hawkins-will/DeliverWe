Rails.application.routes.draw do
  get "/" => "restaurants#index"
  get "/:id/new_order" => "restaurants#new_order"
  get "order/:id/join" => "restaurants#join_order"
  get "order/:id" => "restaurants#show_order"
  get "patrons/:id/add" => "restaurants#new_item"
  post "patrons/:id" => "restaurants#create_item"
  get "patrons/:id" => "restaurants#show_patron"
  post "join/:id" => "restaurants#create_patron"
  post "/:id" => "restaurants#create_order"
  get "/:id" => "restaurants#show"
end
