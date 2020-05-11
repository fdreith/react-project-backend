class ApplicationController < ActionController::API

  def current_user
    byebug
    binding.pry
    Employee.find_by(id: session[:employee_id])
  end

  def logged_in?
    !!current_user
  end

end
