Rails.application.routes.draw do
  
  root to: "the_site#homepage"
  
  devise_for :users
    
  resources :shorturls
  
  match "*shorturl", :to => "navigation#goto", via: :get
  
end
