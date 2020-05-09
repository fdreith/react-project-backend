class TcommentsController < ApplicationController
  before_action :set_tcomment, only: [:show, :update, :destroy]

  # GET /tcomments
  def index
    @tcomments = Tcomment.all

    render json: @tcomments
  end

  # GET /tcomments/1
  def show
    render json: @tcomment
  end

  # POST /tcomments
  def create
    @tcomment = Tcomment.new(tcomment_params)

    if @tcomment.save
      render json: @tcomment, status: :created, location: @tcomment
    else
      render json: @tcomment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tcomments/1
  def update
    if @tcomment.update(tcomment_params)
      render json: @tcomment
    else
      render json: @tcomment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tcomments/1
  def destroy
    @tcomment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tcomment
      @tcomment = Tcomment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tcomment_params
      params.require(:tcomment).permit(:task_id, :employee_id, :supervisor_id)
    end
end
