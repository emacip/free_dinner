class WelcomeController < ApplicationController
  def index
    @customers = (Customer.search  query:{match_all:{}},filter:{geo_distance:{distance:"100km", location:{lat: 53.33, lon: -6.25}}}, size: 32).records
  end
end
