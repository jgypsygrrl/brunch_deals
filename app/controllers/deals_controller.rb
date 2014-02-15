class DealsController < ApplicationController

  before_action :load_deal, {:only: []}

  def index
    @user = User.find_by(id: params[:user_id])
  end

  def show
    @deals = brunch_deals(params[:zip], params[:milesradius])
  end

  def brunch_deals(zip, milesradius)
    return HTTParty.get("http://api.8coupons.com/v1/getdeals?key=d279da9cc6f9b696af1931f3653f21cebddb6ccbbcbc783d7fad2055742e015fe9915cc8f5ba5b50ead16413ba4d62a9&zip=#{zip}&mileradius=#{milesradius}&limit=500&userid=18381&search=brunch")
  end
end