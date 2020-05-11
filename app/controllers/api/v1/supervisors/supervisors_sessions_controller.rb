class Api::V1::SupervisorSessionsController < ApplicationController
  def create
    @supervisor = Supervisor.find_by(email: params[:session][:email])
    if @supervisor && @supervisor.authenticate(params[:session][:password])
      session[:supervisor_id] = @supervisor.id
      render json: SupervisorSerializer.new(@supervisor), status: :ok
    else
      render json:{
        error: "Invalid Credentials"
      }
  end

  def get_current_supervisor
    if logged_in?
      render json: SupervisorSerializer.new(current_user)
    else
      render json: {
        error: "No one logged in"
      }
    end
  end

  def destroy
    session.clear
    render json: {
      notice: "successfully logged out"
    }, status: :ok
  end

end
