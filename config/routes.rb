Rails.application.routes.draw do

  get 'hello_world', to: 'hello_world#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  


  resources :cookers
  resources :eaters

  get "/eater" => "eaters#show"    #redirects url to show 
  get "/cooker" => "cookers#show"  #redirects url to show

  #resources :users

  devise_for :users, controllers: { registrations: 'registrations' }
end
