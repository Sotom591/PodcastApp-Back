class Api::V1::UsersController < ApplicationController

  def index
    render json: User.all
  end

  def show
    render json: User.find(params[:id])
  end

  def profile
    token = request.headers["Authentication"].split(" ")[1]
    payload = decode(token)
    user_id = payload["user_id"]
    # SWITCHED THIS UP SO THAT IT RENDERS THE USERSERIALIZER OBJECT INSTEAD OF JUST USER AS JSON ON FRONTEND #
    @user = User.find(user_id)
    render json: @user, status: :accepted
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: {
        user: UserSerializer.new(@user),
        message: "created",
        user_info: @user,
        error: false,
        token: encode({ user_id: @user.id })
      }, status: :created
    else
      render json: { error: @user.errors.full_messages }, status: :not_acceptable
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }
    end
  end

  private

  def user_params
    params.require(:user).permit(:firstName, :lastName, :email, :username, :password, :avatar)
  end

end
