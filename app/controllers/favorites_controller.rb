class FavoritesController < ApplicationController
  
  def index
    @user = User.find_by(id: params[:user_id])
    @deal = Deal.all(deal_params)
  end

  def destroy
    @deal = Deal.find(params["id"])
    if @deal.destroy
      redirect_to user_favorites_path(session[:user_id])
    end
  end

  def create
    @deal = Deal.create(deal_params)
    @favorite = Favorite.create(user_id: session[:user_id], deal_id: @deal.id)
    redirect_to user_path(session[:user_id])
  end

  def deal_params
    params.permit(:dealTitle, :showImage, :dealinfo, :name, :URL, :expirationDate)
  end
end

