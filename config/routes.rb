Rails.application.routes.draw do
  get 'home', to: 'static#home'
  resources :orders
  resources :invoices
  resources :products, only: [:show, :index, :new]
  post "/products/new", to: "products#create", as: "new_product_path"
end
