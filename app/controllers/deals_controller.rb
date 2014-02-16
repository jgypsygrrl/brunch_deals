class DealsController < ApplicationController

  # before_action :load_deal, {:only: []}

  def index
    @user = User.find_by(id: params[:user_id])
  end



  def show
    # @zip = Zip.find_by_zip(params[:id])

    # def get_radius(milesradius)
    # milesradius = gets.chomp

    zip = "10013"
    milesradius = "5"
    @deals = brunch_deals(params[:zip], params[:milesradius])

  end

  def brunch_deals(zip, milesradius)
    return HTTParty.get("http://api.8coupons.com/v1/getdeals?key=#{8COUPONS_CLIENT_ID}&zip=#{zip}&mileradius=#{milesradius}&limit=500&userid=18381&search=brunch")
  end
end