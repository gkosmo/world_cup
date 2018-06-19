require 'open-uri'
class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def home
     Match.update_all_matches
     @matches =  Match.where(datetime: DateTime.now.all_day)
  end
  def vote_match
      Vote.create(user: current_user, team: params[:team], match_id: params[:match])
      redirect_to root_path
  end
end
