class Api::V1::PodcastsController < ApplicationController
 def index
   render json: Podcast.all
 end

 def show
   render json: Podcast.find(params[:id])
 end

 def create
   render json: Podcast.create(podcasts_params)
 end

 def destroy
   render json: Podcast.find(params[:id]).destroy
 end

 private
##we can find podcasts by id via ListenNotes API, not sure if we'll have to completely mirror their structure here
   def podcasts_params
     params.require(:podcasts).permit(:API_id)
   end
end
