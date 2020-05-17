class Api::V1::TasksController < ApplicationController
  before_action :set_task, only: [:show, :update, :destroy]

  # GET /tasks
  def index
    @tasks = Task.all

    render json: TaskSerializer.new(@tasks).serialized_json
  end

  # GET /tasks/1
  def show
    render json: TaskSerializer.new(@task).serialized_json
  end

  # POST /tasks
  def create
    @task = Task.new(task_params)

    if @task.save
      render json: TaskSerializer.new(@task).serialized_json, status: :created
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tasks/1
  def update
    if @task.update(task_params)
      render json: TaskSerializer.new(@task).serialized_json
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tasks/1
  def destroy
    if @task.destroy
      render json: {message: "Task Destroyed."}, status: :ok
    else
      render json: {error: "Task Failed To Destroy."}, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def task_params
      params.require(:task).permit(:content, :due_date, :completed, :user_id, :owner_id)
    end
end
