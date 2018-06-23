class AddVoteCreditToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :vote_credits, :integer, default: 0
  end
end
