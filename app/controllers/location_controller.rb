class LocationController < ApplicationController
    def index
    @zip = Zip.find_by_zip(params[:zip])
    @milesradius = 
  end
