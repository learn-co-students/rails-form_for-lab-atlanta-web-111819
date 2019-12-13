Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :school_classes
  resources :students
  # get '/school_classes/:id', to: 'school_classes#show', as: 'school_class'
end
