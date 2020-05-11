Rails.application.routes.draw do
  post "/api/v1/employees/login", to: "api/v1/employees/employees_sessions#create"
  post "/api/v1/employees/signup", to: "api/v1/employees/employees#create"
  delete "/api/v1/employees/logout", to: "api/v1/employees/employees_sessions#destroy"
  get "/api/v1/employees/get_current_employee", to: "api/v1/employees/employees_sessions#get_current_employee"

  post "/api/v1/supervisors/login", to: "api/v1/supervisors/supersivors_sessions#create"
  post "/api/v1/supervisors/signup", to: "api/v1/supervisors/supervisors#create"
  delete "/api/v1/supervisors/logout", to: "api/v1/supervisors/supervisors_sessions#destroy"
  get "/api/v1/supervisors/get_current_supervisor", to: "api/v1/supervisors/supervisors_sessions#get_current_supervisor"


# api is websitedomain.come/api/v1/resource
  namespace :api do 
    namespace :v1 do 
      resources :comments
      resources :tasks
      resources :departments
      namespace :employees do 
        resources :employees
      end
      namespace :supervisors do 
        resources :supervisors
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
