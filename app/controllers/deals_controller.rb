class DealsController < ApplicationController

  # def index
  #   @favorite= @user.favorites_list.all
  #   render :index
  # end

  # def new
  #   @favorite = Deal.new
  # end

  # def create
  #   @user = User.find_by(id: params[:user_id])
  #   @favorite = Deal.create(dealTitle: params[:dealTitle], showImage: params[:showImage], name: params[:name], URL: params[:URL], expirationDate: params[:expirationDate])
  # end


  def results
    @deals = brunch_deals(params[:zip])
    @deals.sort_by! {|deal| deal[:expirationDate]}
  end

  def brunch_deals(zip)
    return HTTParty.get("http://api.8coupons.com/v1/getdeals?key=d279da9cc6f9b696af1931f3653f21cebddb6ccbbcbc783d7fad2055742e015fe9915cc8f5ba5b50ead16413ba4d62a9&zip=#{zip}&mileradius=20&limit=500&userid=18381&search=brunch")
  end

end

