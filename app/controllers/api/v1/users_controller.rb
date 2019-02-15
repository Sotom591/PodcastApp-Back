class Api::V1::UsersController < ApplicationController
  def index
    render json: User.all
  end

  def show
    render json: User.find(params[:id])
  end

  # def profile
  #
  # end

  # def create
  #   @user = User.create(user_params)
  # end

  # def update
  #   @user = User.find(params[:id]).update(user_params)
  #     if @user.valid?
  #       render json:
  #     else
  #       render json:
  #     end
  # end


  private
    def user_params
      params.require(:user).permit(:firstName, :lastName, :email, :username, :password, :avatar)
    end
end
