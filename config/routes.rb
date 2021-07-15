Rails.application.routes.draw do
  
  root 'dashboard#index'
  
  resources :orders

  
   resources :orderdetails
  
  
  


  resources :categories

   
  resources :products 
   

  

  
  resources :carts
  # post '/item' => 'carts#item', as: 'item'

  match '/CartsItem', to: 'carts#item' , :via => [:get, :post]
  resources :product_details
  devise_for :users


   

  
  
  devise_scope :user do  
     get '/users/sign_out' => 'devise/sessions#destroy'
     end  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
