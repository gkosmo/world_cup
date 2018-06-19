require 'open-uri'
class Match < ApplicationRecord




    def self.update_all_matches

        matches_url = 'http://worldcup.sfg.io/matches'
        matches_json = open(matches_url).read
        matches_json = JSON.parse(matches_json)
        matches_json.each do |mat|
            match_db = Match.where(fifa_id: mat['fifa_id'] )[0]
            match_db.update(datetime: mat["datetime"], home_team: mat["home_team"]["country"], away_team: mat["away_team"]["country"], venue: mat["venue"] ) 
        end
    end



end
