# class ClosestStationsController < ApplicationController
#   before_action :closest_station, only: [:show, :edit, :update, :destroy]

#   def index
#     @closest_stations = ClosestStation.all
#   end

#   def new
#     @closest_station = ClosestStation.new
#   end

#   def create
#     @closest_station = ClosestStation.new(closest_station_params)
#     if @closest_station.save
#       redirect_to new_property_path
#     else
#       render 'new'
#     end
#   end

#   private
  
#   def closest_station_params
#     params.require(:closest_station).permit(:route, :station, :on_foot)
#   end
# end
