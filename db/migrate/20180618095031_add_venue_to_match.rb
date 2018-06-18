class AddVenueToMatch < ActiveRecord::Migration[5.1]
  def change
    add_column :matches, :venue, :string
  end
end
