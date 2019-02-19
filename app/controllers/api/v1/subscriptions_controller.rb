class Api::V1::SubscriptionsController < ApplicationController
  def index
    render json: Subscriptions.all
  end

  def create
    render json: Subscriptions.create(user_genre_params)
  end

  def show
    render json: Subscriptions.find(params[:id])
  end

  def destroy
    render json: Subscriptions.find(params[:id]).destroy
  end

  private
    def subscriptions_params
      params.require(:subscriptions).permit(:user_id, :podcast_id)
    end
end
