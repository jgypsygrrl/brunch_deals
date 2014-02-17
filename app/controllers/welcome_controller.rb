class WelcomeController < ApplicationController
  def index
    
    def zip
      @zip = []
    end

    def milesradius
      @milesradius = []
    end

    @deals = :zip && :milesradius
  end
end