require 'open-uri'
class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def home
     @matches =  Match.where(datetime: DateTime.now.all_day)
  end

  def dashboard
    @user_flats = current_user.flats
  end
end
