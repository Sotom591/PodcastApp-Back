class Api::V1::EpisodePostController < ApplicationController
  def index
    render json: EpisodePost.all
  end

  def show
    render json: EpisodePost.find(params[:id])
  end

  def create
    render json: EpisodePost.create(episode_post_params)
  end

  def update
    EpisodePost.find(params[:id]).update(episode_post_params)
    render json: EpisodePost.find(params[:id])
  end

  def destroy
    render json: EpisodePost.find(params[:id].destroy)
  end

  private
    def episode_post_params
      params.require(:episode_post).permit(:episode_id, :user_id, :title, :content)
    end
end
