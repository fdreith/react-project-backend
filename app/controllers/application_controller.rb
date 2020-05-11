class ApplicationController < ActionController::API

  def current_user
    binding.pry
    byebug
    if session[:employee_id]
      Employee.find_by(id: session[:employee_id])
    else session[:supervisor_id]
      Supervisor.find_by(id: session[:supervisor_id])
    end

  end

  def logged_in?
    !!current_user
  end

end
