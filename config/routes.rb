Rails.application.routes.draw do
  
  devise_for :professors
  resources :notifications
  root 'notifications#index'
end
