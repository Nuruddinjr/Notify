Rails.application.routes.draw do
  
  resources :notifications
  root 'notifications#index'
end
