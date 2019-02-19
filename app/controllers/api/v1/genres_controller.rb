class Api::V1::GenresController < ApplicationController
  def index
    render json: Genre.all
  end

  def show
    render json: Genre.find(params[:id])
  end


  private
    def genre_params
      params.require(:genre).permit(:name)
    end
end
