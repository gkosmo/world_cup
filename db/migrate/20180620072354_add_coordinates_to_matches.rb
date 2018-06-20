class AddCoordinatesToMatches < ActiveRecord::Migration[5.1]
  def change
    add_column :matches, :longitude, :float
    add_column :matches, :latitude, :float
  end
end
