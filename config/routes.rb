Rails.application.routes.draw do
  #limit routes to only these 4
  resources :messages, :only => [:index, :new, :create, :show]
end
