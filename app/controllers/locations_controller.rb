class LocationController < ApplicationController
    def index
        locations = Location.all 
        render json: locationSerializer.new(locations)
      end
      
      def show
        location = Location.find(params[:id])
        render json: locationSerializer.new(location)
      end
end
