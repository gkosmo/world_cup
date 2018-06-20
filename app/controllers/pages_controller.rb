require 'open-uri'
class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def home
     # Match.update_all_matches
     @matches =  Match.where(datetime: DateTime.now.all_day)
     matches_with_coord = @matches.where.not(latitude: nil)
     @markers  = matches_with_coord.map do |match|
        {
          latitude: match.latitude,
          longitude: match.longitude
          }
   end
  end

  def vote_match
      Vote.create(user: current_user, team: params[:team], match_id: params[:match])
      redirect_to root_path
  end
end
