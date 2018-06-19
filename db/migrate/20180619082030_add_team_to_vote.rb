class AddTeamToVote < ActiveRecord::Migration[5.1]
  def change
    add_column :votes, :team, :string
  end
end
