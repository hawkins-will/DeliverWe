Rails.application.routes.draw do
  get "/" => "restaurants#index"
  get "/:id/new_order" => "orders#new_order"
  get "order/:id/join" => "patrons#new_patron"
  get "order/:id" => "orders#show_order"
  delete "order/:id" => "orders#destroy_order"
  get "order/:id/cancel" => "orders#cancel_order"
  get "patrons/:id/add" => "items#new_item"
  post "patrons/:id" => "items#create_item"
  get "patrons/:id" => "patrons#show_patron"
  post "join/:id" => "patrons#create_patron"
  post "/:id" => "orders#create_order"
  get "/:id" => "restaurants#show"
end
