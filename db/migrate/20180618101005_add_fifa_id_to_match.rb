class AddFifaIdToMatch < ActiveRecord::Migration[5.1]
  def change
    add_column :matches, :fifa_id, :string
  end
end
