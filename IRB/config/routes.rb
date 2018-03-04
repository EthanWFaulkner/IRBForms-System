Rails.application.routes.draw do
  get 'welcome/index'

 root 'welcome#index'
 
 #generate user routes
 resources :forms
 resources :section1
 resources :section2
 resources :section3
 resources :section3animal
 resources :section4
 resources :section5
 
 match '/form/generateForm', to: 'forms#generateForm', via: [:all], as: :generate_form

end
