Rails.application.routes.draw do
 root 'forms#index'
 
 #generate user routes
 resources :forms
 resources :section1
 resources :section2
 resources :section3
 resources :section3animal
 resources :section4
 resources :section4animal
 resources :section5
 resources :researcher
 
 match '/form/generateForm', to: 'forms#generateForm', via: [:all], as: :generate_form
 match '/form/addResearcher/:form', to: 'forms#addResearcher', via: [:all], as: :add_researcher
 match '/researcher/showFormResearchers/:form', to: 'researcher#showFormResearchers', via: [:all], as: :show_form_researchers

end
