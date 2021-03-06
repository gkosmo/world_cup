require 'open-uri'
class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def home
     Match.update_all_matches
     @matches =  Match.where(datetime: DateTime.now.all_day)
     matches_with_coord = @matches.where.not(latitude: nil)
     @markers  = matches_with_coord.map do |match|
        {
          lng: match.longitude,
          lat: match.latitude
          }
   end
    @credit_packs = CreditPack.all

  end

  def vote_match
      Vote.create!(user: current_user, team: params[:team], match_id: params[:match])
      redirect_to root_path
  end


  def search
    @matches =  Match.near(query_search[:query], 200)
     matches_with_coord = @matches.where.not(latitude: nil)
     @markers  = matches_with_coord.map do |match|
        {
          lng: match.longitude,
          lat: match.latitude
          }
     end
  end

  def query_search
    params.require(:query).permit(:query)
  end
end
