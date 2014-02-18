class FavoritesController < ApplicationController
  def index
    @user = User.find_by(id: params[:user_id])
    @deal = Deal.all(deal_params)
  end

  def update
    @deal.update(deal_params)
    redirect_to user_favorites_path(session[:user_id])
  end

  def destroy
    @deal.destroy
    redirect_to user_favorites_path(session[:user_id])
  end

  def create
    @deal = Deal.create(deal_params)
    @favorite = Favorite.create(user_id: session[:user_id], deal_id: @deal.id)
    redirect_to user_favorites_path(session[:user_id])
  end

  def deal_params
    params.permit(:dealTitle, :showImage, :dealinfo, :name, :URL, :expirationDate)
  end
end