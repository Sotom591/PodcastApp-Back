class Api::V1::UserGenreController < ApplicationController
  def index
    render json: UserGenre.all
  end
  
  def create
    render json: UserGenre.create(user_genre_params)
  end

  def show
    render json: UserGenre.find(params[:id])
  end

  def destroy
    render json: UserGenre.find(params[:id]).destroy
  end

  private
    def user_genre_params
      params.require(:user_genre).permit(:user_id, :genre_id)
    end
end
