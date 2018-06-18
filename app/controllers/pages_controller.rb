require 'open-uri'
class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def home
    matches_url = 'http://worldcup.sfg.io/matches/today'
    matches_json = open(matches_url).read
    @matches = JSON.parse(matches_json)
  end

  def dashboard
    @user_flats = current_user.flats
  end
end
