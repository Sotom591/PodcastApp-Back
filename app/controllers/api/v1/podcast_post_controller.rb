class Api::V1::PodcastPostController < ApplicationController
  def index
    render json: PodcastPost.all
  end

  def show
    render json: PodcastPost.find(params[:id])
  end

  def create
    render json: PodcastPost.create(podcast_post_params)
  end

  def update
    PodcastPost.find(params[:id]).update(podcast_post_params)
    render json: PodcastPost.find(params[:id])
  end

  def destroy
    render json: PodcastPost.find(params[:id].destroy)
  end

  private
    def podcast_post_params
      params.require(:podcast_post).permit(:podcast_id, :user_id, :title, :content)
    end
end
