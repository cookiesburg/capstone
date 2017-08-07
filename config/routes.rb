Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  
  resources :cookers
  resources :eaters

  #resources :users

  devise_for :users, controllers: { registrations: 'registrations' }
end
