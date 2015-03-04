Rails.application.routes.draw do
  
  devise_for :professors

  resources :notifications do
  	member do
  		put "like", to: "notifications#upvote"
 	end
  end
  root 'notifications#index'
end
