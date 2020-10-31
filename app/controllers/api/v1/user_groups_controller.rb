class UserGroupsController < ApplicationController
  before_action :set_user_group, only: [:show, :update, :destroy]

  # GET /user_groups
  def index
    @user_groups = UserGroup.all

    render json: @user_groups
  end

  # GET /user_groups/1
  def show
    render json: @user_group
  end

  # POST /user_groups
  def create
    @user_group = UserGroup.new(user_group_params)

    if @user_group.save
      render json: @user_group, status: :created, location: @user_group
    else
      render json: @user_group.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_groups/1
  def update
    if @user_group.update(user_group_params)
      render json: @user_group
    else
      render json: @user_group.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_groups/1
  def destroy
    @user_group.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_group
      @user_group = UserGroup.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_group_params
      params.require(:user_group).permit(:user_id, :group_id)
    end
end
