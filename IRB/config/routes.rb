Rails.application.routes.draw do
  get 'welcome/index'

 root 'welcome#index'
 
 #generate user routes
 resources :users
 resources :forms
 resources :form_elements

end
