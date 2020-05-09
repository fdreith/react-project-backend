Rails.application.routes.draw do
  resources :tcomments
  resources :tasks
  resources :supervisors
  resources :employees
  resources :departments
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
