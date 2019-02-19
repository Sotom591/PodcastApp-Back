class Api::V1::EpisodesController < ApplicationController
  def index
   render json: Episodes.all
 end

 def show
   render json: Episodes.find(params[:id])
 end

 def create
   render json: Episodes.create(episodes_params)
 end

 def destroy
   render json: Episodes.find(params[:id]).destroy
 end

 private
##we can find episodes by id via ListenNotes API, not sure if we'll have to completely mirror their structure here
   def episodes_params
     params.require(:episodes).permit(:API_id)
   end
end
