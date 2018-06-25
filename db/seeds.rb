# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

  matches_url = 'http://worldcup.sfg.io/matches'
  matches_json = open(matches_url, 'User-Agent' => 'Ruby').read
        matches_json = JSON.parse(matches_json)
        matches_json.each do |mat|
         Match.create(fifa_id: mat['fifa_id'] ,datetime: mat["datetime"], home_team: mat["home_team"]["country"], away_team: mat["away_team"]["country"], venue: mat["venue"], winner: mat['winner'] )
        end
