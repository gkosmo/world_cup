require 'open-uri'
class Match < ApplicationRecord
  geocoded_by :venue
  after_validation :geocode, if: :will_save_change_to_venue?
  has_many :votes


    def self.update_all_matches

        matches_url = 'http://worldcup.sfg.io/matches'
        matches_json = open(matches_url, 'User-Agent' => 'Ruby').read
        matches_json = JSON.parse(matches_json)
        matches_json.each do |mat|
            match_db = Match.where(fifa_id: mat['fifa_id'] )[0]
            match_db.update(datetime: mat["datetime"], home_team: mat["home_team"]["country"], away_team: mat["away_team"]["country"], venue: mat["venue"], winner: mat['winner'] )
        end
    end

    def votes_away_team
      self.votes.where(team: self.away_team)
    end

    def votes_home_team
      self.votes.where(team: self.home_team)
    end

    def vote_users(user)
       Vote.where(match: self, user: user).empty? ? false : Vote.where(match: self, user: user).first
    end

end
