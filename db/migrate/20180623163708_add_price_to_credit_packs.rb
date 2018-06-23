class AddPriceToCreditPacks < ActiveRecord::Migration[5.1]
  def change
    add_monetize :credit_packs, :price, currency: { present: false }
  end
end
