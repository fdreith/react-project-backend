Rails.application.routes.draw do


# api is websitedomain.come/api/v1/resource
  namespace :api do 
    namespace :v1 do 
      resources :comments
      resources :tasks
      resources :supervisors
      resources :employees
      resources :departments
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
