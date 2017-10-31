class PagesController < ApplicationController

  def profile
    @passengerrides = Passengerride.all
    @driverrides = Driverride.all
  end

end