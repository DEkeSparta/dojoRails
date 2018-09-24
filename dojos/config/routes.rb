Rails.application.routes.draw do
  devise_for :teachers, :controllers => {registrations: "registrations"}
  resources :pupils
  resources :dojos

  root to: "dojos#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
