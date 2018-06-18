require 'open-uri'
class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def home
    matches_url = 'http://worldcup.sfg.io/matches/today'
    self_destructive_namein_k = open(matches_url).read

    @matches = JSON.parse(self_destructive_namein_k)
  end

  def dashboard
    @user_flats = current_user.flats
  end
end
