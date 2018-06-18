class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.datetime :datetime
      t.string :home_team
      t.string :away_team
      t.string :winner

      t.timestamps
    end
  end
end
